<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TraCuuVB172</title>
  <link rel="shortcut icon" type="image/png" href="<?php echo e(asset('/public/img-web/logo172.png')); ?>" />
  <link rel="stylesheet" href="<?php echo e(asset('/public/client/css/styles.min.css')); ?>" />
  <link rel="stylesheet" href="<?php echo e(asset('/public/client/css/styles_me.css')); ?>" />


</head>

<body>
  <!--  Body Wrapper -->
<div  class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <?php echo $__env->make('block.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <!--  Header Start -->
      	<?php echo $__env->make('block.menu-top', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
      <!--  Header End -->

        <!--  Row 1 -->
        <?php echo $__env->yieldContent('main'); ?>
        
        
    </div>
  </div>
  

  <script src="<?php echo e(asset('/public/ckeditor/ckeditor.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/libs/jquery/dist/jquery.min.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/libs/bootstrap/dist/js/bootstrap.bundle.min.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/js/sidebarmenu.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/js/app.min.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/libs/apexcharts/dist/apexcharts.min.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/libs/simplebar/dist/simplebar.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/js/dashboard.js')); ?>"></script>
  <script type="text/javascript">
    $('#search').on('keyup',function(){
        $value = $(this).val();
        $.ajax({
            type: 'get',
            url: '<?php echo e(URL::to('exam/manager/search')); ?>',
            data: {
                'search': $value
            },
            success:function(data){
                $('tbody').html(data);
            }
        });
    })
    $('#search-name-choice').on('keyup',function(){
        $value = $(this).val();
        $.ajax({
            type: 'get',
            url: '<?php echo e(URL::to('exam/manager/search-name-choice')); ?>',
            data: {
                'search': $value
            },
            success:function(data){
                $('tbody').html(data);
            }
        });
    })
    $('#search-user').on('keyup',function(){
        $value = $(this).val();
        $.ajax({
            type: 'get',
            url: '<?php echo e(URL::to('user/manager/search-user')); ?>',
            data: {
                'search': $value
            },
            success:function(data){
                $('tbody').html(data);
            }
        });
    })
    $.ajaxSetup({ headers: { 'csrftoken' : '<?php echo e(csrf_token()); ?>' } });
  </script>
  
  
</body>

</html><?php /**PATH C:\xampp\htdocs\vanban\resources\views/welcome.blade.php ENDPATH**/ ?>