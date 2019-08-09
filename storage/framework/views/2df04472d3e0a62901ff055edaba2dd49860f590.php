<?php $__env->startSection('title', trans('messages.add').' '.trans('messages.mainapp.menu.parent_department')); ?>

<?php $__env->startSection('content'); ?>
    <div id="breadcrumbs-wrapper">
        <div class="container">
            <div class="row">
                <div class="col s12 m12 l12">
                    <h5 class="breadcrumbs-title col s5" style="margin:.82rem 0 .656rem"><?php echo e(trans('messages.add')); ?> <?php echo e(trans('messages.mainapp.menu.parent_department')); ?></h5>
                    <ol class="breadcrumbs col s7 right-align">
                        <li><a href="<?php echo e(route('dashboard')); ?>"><?php echo e(trans('messages.mainapp.menu.dashboard')); ?></a></li>
                        <li><a href="<?php echo e(route('parent_departments.index')); ?>"><?php echo e(trans('messages.mainapp.menu.parent_department')); ?></a></li>
                        <li class="active"><?php echo e(trans('messages.add')); ?></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col s12 m6 offset-m3" style="padding-top:10px;padding-bottom:10px">
                <a class="btn-floating waves-effect waves-light orange tooltipped right" href="<?php echo e(route('parent_departments.index')); ?>" data-position="top" data-tooltip="<?php echo e(trans('messages.cancel')); ?>"><i class="mdi-navigation-arrow-back"></i></a>
                <form id="add" action="<?php echo e(route('parent_departments.store')); ?>" method="post">
                    <?php echo e(csrf_field()); ?>

                    <div class="row">
                        <div class="input-field col s12">
                            <label for="name"><?php echo e(trans('messages.name')); ?></label>
                            <input id="name" type="text" name="name" placeholder="<?php echo e(trans('messages.mainapp.menu.parent_department')); ?> <?php echo e(trans('messages.name')); ?>" value="<?php echo e(old('name')); ?>" data-error=".name">
                            <div class="name">
                                <?php if($errors->has('name')): ?><div class="error"><?php echo e($errors->first('name')); ?></div><?php endif; ?>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12">
                            <label for="olangname"><?php echo e(trans('messages.mainapp.menu.otherlanguage')); ?></label>
                            <input id="olangname" type="text" name="olangname" placeholder="<?php echo e(trans('messages.mainapp.menu.otherlanguage')); ?>" value="<?php echo e(old('olangname')); ?>" data-error=".olangname">
                            <div class="olangname">
                                <?php if($errors->has('olangname')): ?><div class="error"><?php echo e($errors->first('olangname')); ?></div><?php endif; ?>
                            </div>
                        </div>
                    </div>
                    
					<div class="row">
                        <div class="input-field col s12">
                            <button class="btn waves-effect waves-light right" type="submit">
                                <?php echo e(trans('messages.save')); ?><i class="mdi-content-save left"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<!------------------------------------->

<script type="text/javascript" src="http://www.google.com/jsapi"></script>

<script type="text/javascript">
google.load("elements", "1", {packages: "transliteration"});

function OnLoad() {                
    var options = {
        sourceLanguage:
        google.elements.transliteration.LanguageCode.ENGLISH,
        destinationLanguage:
        [google.elements.transliteration.LanguageCode.HINDI],
        shortcutKey: 'ctrl+g',
        transliterationEnabled: true
    };

    var control = new google.elements.transliteration.TransliterationControl(options);
    control.makeTransliteratable(["olangname"]);
    var keyVal = 32; // Space key
    $("#name").on('keydown', function(event) {
        if(event.keyCode === 32) {
            var engText = $("#name").val() + " ";
            var engTextArray = engText.split(" ");
            $("#olangname").val($("#olangname").val() + engTextArray[engTextArray.length-2]);

            document.getElementById("olangname").focus();
            $("#olangname").trigger ( {
                type: 'keypress', keyCode: keyVal, which: keyVal, charCode: keyVal
            } );
        }
    });

   
	
	
} //end onLoad function

google.setOnLoadCallback(OnLoad);
</script> 

<!-------------------------------------->
    <script>
        $("#add").validate({
            rules: {
                name: {
                    required: true
                },
                olangname: {
                    required: true
                },
                start: {
                    required: true,
                    digits: true
                },
            },
            errorElement : 'div',
            errorPlacement: function(error, element) {
                var placement = $(element).data('error');
                if (placement) {
                    $(placement).append(error)
                } else {
                    error.insertAfter(element);
                }
            }
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>