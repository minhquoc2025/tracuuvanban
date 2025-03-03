
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="container-fluid">
        <div class="text-center">
            <h5 class="card-title fw-semibold mb-4">CHI TIẾT THÔNG TIN NGƯỜI DÙNG</h5>
        </div>
        <div class="card mx-9 w-75">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h3>Email</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6"><?php echo e($get->email); ?></p>
                        <a data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample">
                        <form action="<?php echo e(URL::to('user/manager/change-email/'.$get->id)); ?>" method="POST">
                            <?php echo e(csrf_field()); ?>

                            <div class="row">
                                <div class="col-8">
                                    <input name="email" class="form-control" type="text" value="<?php echo e($get->email); ?>">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row d-flex flex-row">
                    <div class="col">
                        <h3>Số điện thoại</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6"><?php echo e($get->phone); ?></p>
                        <a data-bs-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample1">
                        <form action="<?php echo e(URL::to('user/manager/change-phone/'.$get->id)); ?>" method="POST">
                            <?php echo e(csrf_field()); ?>

                            <div class="row">
                                <div class="col-8">
                                    <input name="phone" maxlength="9" minlength="9" class="form-control" type="text" value="<?php echo e($get->phone); ?>">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>Họ và tên</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6"><?php echo e($get->fullname); ?></p>
                        <a data-bs-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample2">
                        <form action="<?php echo e(URL::to('user/manager/change-fullname/'.$get->id)); ?>" method="POST">
                            <?php echo e(csrf_field()); ?>

                            <div class="row">
                                <div class="col-8">
                                    <input name="fullname" class="form-control" type="text" value="<?php echo e($get->fullname); ?>">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>Mật khẩu</h3>
                    </div>
                    <div class="col d-flex flex-row">
                        <p class="fs-6">******</p>
                        <a data-bs-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample">
                            <i style="color: black" class="ti ti-edit fs-8"></i>
                        </a>
                    </div>
                    <div class="collapse mb-3" id="collapseExample3">
                        <form action="<?php echo e(URL::to('user/manager/change-password/'.$get->id)); ?>" method="POST">
                            <?php echo e(csrf_field()); ?>

                            <div class="row">
                                <div class="col-8">
                                    <input name="pass" class="form-control" type="password" value="<?php echo e($get->password); ?>">
                                </div>
                                <div class="col-4 text-start">
                                    <button type="submit" class="btn btn-success">Lưu</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h3>Quyền truy cập</h3>
                    </div>
                    <div class="col">
                        <div class="dropdown ">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                <?php $__currentLoopData = $get->user_role; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $check_id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php $__currentLoopData = $role; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if($check_id->pivot->role_id == $value->id): ?>
                                        
                                        <?php echo e($value->name); ?>

                                        <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </a>
                            <?php if($data['u_r']->hasRole('Admin')): ?>
                                <ul class="dropdown-menu form-control" aria-labelledby="dropdownMenuLink">
                                    <?php $__currentLoopData = $role; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $roleall): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><a class="dropdown-item " href="<?php echo e(URL::to('user/manager/change-role-user/'.$get->id.'/'.$roleall->id)); ?>"><?php echo e($roleall->name); ?></a></li>
                                    
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/user/detail-user.blade.php ENDPATH**/ ?>