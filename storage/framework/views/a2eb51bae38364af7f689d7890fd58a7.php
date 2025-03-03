
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="container-fluid">
    <h3>THÊM NGƯỜI DÙNG</h3>
      <div class="card mx-9">
        <div class="card-body">
            <form action="<?php echo e(URL::to('user/manager/handle-add-user/')); ?>" method="POST">
                <?php echo e(csrf_field()); ?>

                <fieldset>
                    <div class="row">
                        <div class="col mb-3">
                            <label class="form-label">Tên người dùng</label>
                            <input type="text" name="fullname" class="form-control" required>
                        </div>
                        <div class=" col mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <label class="form-label">Số điện thoại</label>
                            <input type="text" name="phone" class="form-control"  required>
                        </div>
                        <div class=" col mb-3">
                            <label class="form-label">Mật khẩu</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>
                    </div>
                    <div class="w-25 mb-3">
                        <label class="form-label">Quyền truy cập</label>
                        <div class="dropdown ">
                            <select name="role_id" id="" class="form-select" required>
                                <?php $__currentLoopData = $role; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $roleall): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($roleall->id); ?>"><?php echo e($roleall->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                        </div>
                    </div>
                    <div class="text-center">
                        <input type="submit" class="btn btn-primary" value="Thêm">
                    </div>
                </fieldset>
            </form>
        </div>
      </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/user/add-user.blade.php ENDPATH**/ ?>