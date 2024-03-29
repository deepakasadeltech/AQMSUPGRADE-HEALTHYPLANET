<?php

namespace App\Http\Controllers\Auth;

use Auth;
use App\Http\Controllers\Controller;
Use App\Http\Controllers\Auth\Session;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Models\User;


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
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function username()
    {
        return 'username';
    }

    public function login(Request $request)
    {
        $this->validateLogin($request);

        if ($lockedOut = $this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        $credentials = $this->credentials($request);

        if ($this->guard()->attempt($credentials, $request->has('remember'))) {
            return $this->sendLoginResponse($request);
        }

        if (! $lockedOut) {
            $this->incrementLoginAttempts($request);
        }
    
        return $this->sendFailedLoginResponse($request);
    }

    protected function authenticated(Request $request, $user)
    {
    //-------------------------------------------------
   /* $previous_session = Auth::User()->session_id;
    if($previous_session){
        \Session::getHandler()->destroy($previous_session);
        }*/
         $username = $request->username;
         $new_sessid   = \Session::getId();
          $userID = User::where('username', $username)->first();
          $userID->session_id = $new_sessid;
          $userID->save();
     //----------------------------------------------------
        return redirect()->route('dashboard');
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();
        return redirect()->route('main');
    }

    protected function guard()
    {
        return Auth::guard('users');
    }
}
