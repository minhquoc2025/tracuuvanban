<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Modernize Free</title>
  <link rel="shortcut icon" type="image/png" href="<?php echo e(asset('/public/client/images/logos/favicon.png')); ?>" />
  <link rel="stylesheet" href="<?php echo e(asset('/public/client/css/styles.min.css')); ?>" />
</head>

<body>
  <!--  Body Wrapper -->
<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <div
      class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
      <div class="d-flex align-items-center justify-content-center w-100">
        <div class="row justify-content-center w-100">
          <div class="col-md-8 col-lg-6 col-xxl-3">
            <div class="card mb-0">
              <div class="card-body">
                <a href="./index.html" class="text-nowrap logo-img text-center d-block py-3 w-100">
                  <img src="<?php echo e(asset('/public/client/images/logos/dark-logo.svg')); ?>" width="180" alt="">
                </a>
                <p class="text-center">Your Social Campaigns</p>
                <?php if(session('err')): ?>
                <div class="alert alert-danger" role="alert">
                        <?php echo e(session('err')); ?>

                </div>
                <?php elseif(session('pass')): ?>
                <div class="alert alert-success" role="alert">
                    <?php echo e(session('pass')); ?>

                </div>
                <?php else: ?>
                <div></div>
                <?php endif; ?>
                <form action="<?php echo e(URL::to('/handle-regis')); ?>" method="POST">
                    <?php echo e(csrf_field()); ?>

                    <div class="mb-3">
                        <label class="form-label">Họ và tên</label>
                        <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>  
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email</label>
                        <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Mật khẩu</label>
                        <input name="pass" type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-4">
                        <label for="exampleInputPassword1" class="form-label">Nhập lại mật khẩu</label>
                        <input name="pass_again" type="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <button type="submit" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2">Đăng ký</button>
                    
                    <div class="d-flex align-items-center justify-content-center">
                        <p class="fs-4 mb-0 fw-bold">Bạn đã có tài khoản?</p>
                        <a class="text-primary fw-bold ms-2" href="<?php echo e(URL::to('/login')); ?>">Đăng nhập</a>
                    </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
  <script src="<?php echo e(asset('/public/client/libs/jquery/dist/jquery.min.js')); ?>"></script>
  <script src="<?php echo e(asset('/public/client/libs/bootstrap/dist/js/bootstrap.bundle.min.js')); ?>"></script>
</body>

</html><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/user/register.blade.php ENDPATH**/ ?>