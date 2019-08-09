<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use DB;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);

        $user = \DB::table('users')->where('email', $request->input('email'))->first();

        if (auth()->guard('web')->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])) {

            $new_sessid   = \Session::getId(); //get new session_id after user sign in

            if($user->session_id != '') {
                $last_session = \Session::getHandler()->read($user->session_id); 

                if ($last_session) {
                    if (\Session::getHandler()->destroy($user->session_id)) {
                        
                    }
                }
            }

            \DB::table('users')->where('id', $user->id)->update(['session_id' => $new_sessid]);
            
            $user = auth()->guard('web')->user();
            
            return redirect($this->redirectTo);
        }   
        \Session::put('login_error', 'Your email and password wrong!!');
        return back();

    }

    public function logout(Request $request)
    {
        \Session::flush();
        \Session::put('success','you are logout Successfully');
        return redirect()->to('/login');
    }
}