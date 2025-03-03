<header class="app-header">
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="w-100 text-center">
        <?php if(session('err')): ?>
          <div class="alert alert-danger" role="alert">
                  <?php echo e(session('err')); ?>

          </div>
          <?php elseif(session('pass')): ?>
          <div class="alert alert-success" role="alert">
              <?php echo e(session('pass')); ?>

          </div>
          <?php else: ?>
          <div class="text-center">
            <h3>TRA CỨU VĂN BẢN Lư172</h3>
          </div>
        <?php endif; ?>

      </div>
      <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
        <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
          <li class="navbar-brand">
            <?php if(session('user')): ?>
              <span>Hi</span>
              <strong><?php echo e(session('user')); ?></strong>
            <?php endif; ?>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown"
              aria-expanded="false">
              <img src="<?php echo e(asset('./public/client/images/profile/user-1.jpg')); ?>" alt="" width="35" height="35" class="rounded-circle">
            </a>
            <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
              <div class="message-body">
                <a href="<?php echo e(URL::to('/user/manager/g-detail-user/'.Session::get('id_user'))); ?>" class="d-flex align-items-center gap-2 dropdown-item">
                  <i class="ti ti-user fs-6"></i>
                  <p class="mb-0 fs-3">Thông tin tài khoản</p>
                </a>
                <a href="<?php echo e(URL::to('/document/my-document/'.Session::get('id_user'))); ?>" class="d-flex align-items-center gap-2 dropdown-item">
                  <i class="ti ti-mail fs-6"></i>
                  <p class="mb-0 fs-3">VB của tôi</p>
                </a>
                <a href="<?php echo e(URL::to('/exam/my-history-choice/'.Session::get('id_user'))); ?>" class="d-flex align-items-center gap-2 dropdown-item">
                  <i class="ti ti-list-check fs-6"></i>
                  <p class="mb-0 fs-3">Lịch sử chơi</p>
                </a>
                <a href="<?php echo e(URL::to('logout')); ?>" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </header><?php /**PATH C:\xampp\htdocs\vanban\resources\views/block/menu-top.blade.php ENDPATH**/ ?>