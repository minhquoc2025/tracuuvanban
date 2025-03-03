
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="container-fluid">
        <div class="text-center">
            <h5 class="card-title fw-semibold mb-4">CHỈNH SỬA THÔNG TIN NGƯỜI DÙNG</h5>
        </div>
      <div class="card mx-9">
        <div class="card-body">
            
            <?php if(isset($get)): ?>
                <form action="<?php echo e(URL::to('user/manager/handle-edit-user/'.$get->id)); ?>" method="POST">
                    <?php echo e(csrf_field()); ?>

                    <fieldset>
                        <div class="row">
                            <div class="col mb-3">
                                <label class="form-label">Tên người dùng</label>
                                <input name="fullname" id="" class="form-control" value="<?php echo e($get->fullname); ?>" required>
                            </div>
                            <div class=" col mb-3">
                                <label class="form-label">Email</label>
                                <input type="email" name="email" id="" class="form-control" value="<?php echo e($get->email); ?>" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <label class="form-label">Số điện thoại</label>
                                <input name="phone" id="" class="form-control" value="<?php echo e($get->phone); ?>" required>
                            </div>
                            <div class=" col mb-3">
                                <label class="form-label">Mật khẩu</label>
                                <input type="password" name="pass" id="" class="form-control" value="<?php echo e($get->password); ?>" required>
                            </div>
                        </div>
                        <div class="w-25 mb-3">
                            <label class="form-label">Quyền truy cập</label>
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
                                <ul class="dropdown-menu form-control" aria-labelledby="dropdownMenuLink">
                                  <?php $__currentLoopData = $role; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $roleall): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><a class="dropdown-item " href="<?php echo e(URL::to('user/manager/change-role-user/'.$get->id.'/'.$roleall->id)); ?>"><?php echo e($roleall->name); ?></a></li>
                                    
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        </div>
                        <div class="text-center">
                            <input type="submit" class="btn btn-primary" value="Cập nhật">
                        </div>
                    </fieldset>
                </form>
            
            <?php else: ?>
            
                <form action="<?php echo e(URL::to('exam/manager/handle-add-question/')); ?>" method="POST">
                    <?php echo e(csrf_field()); ?>

                    <fieldset>
                        <div class="mb-3">
                        <label class="form-label">Tên câu hỏi</label>
                        <textarea name="name_question" id="" class="w-100 form-control"></textarea>
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 1</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer1" id="answer1" class="w-100 form-control"></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check1">
                            </div>
                        </div>                  
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 2</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer2" id="answer2" class="w-100 form-control"></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check2">
                            </div>
                        </div>                  
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 3</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer3" id="answer3" class="w-100 form-control"></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check3">
                            </div>
                        </div>                  
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 4</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer4" id="answer4" class="w-100 form-control"></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check4">
                            </div>
                        </div>                  
                        </div>
                        <div class="text-center">
                        <button type="submit" class="btn btn-primary">Thêm</button>
                        </div>
                    </fieldset>
                </form>
            
            <?php endif; ?>
        </div>
      </div>
    </div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/user/EditOrAdd-User.blade.php ENDPATH**/ ?>