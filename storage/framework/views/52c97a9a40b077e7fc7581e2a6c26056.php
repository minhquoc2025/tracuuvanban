
<?php $__env->startSection('main'); ?>

<div class="container-fluid">
    <div class="container-fluid">
        <div class="text-center">
            <h5 class="card-title fw-semibold mb-4">CHỈNH SỬA CÂU HỎI</h5>
        </div>
      <div class="card">
        <div class="card-body">
            <?php if(isset($get)): ?>
                <form action="<?php echo e(URL::to('exam/manager/handle-edit-question/'.$get->id)); ?>" method="POST">
                    <?php echo e(csrf_field()); ?>

                    <fieldset>
                        <div class="mb-3">
                        <label class="form-label">Tên câu hỏi</label>
                        <textarea name="name_question" id="" class="w-100 form-control"><?php echo e($get->name); ?></textarea>
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 1</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer1" id="" class="w-100 form-control"><?php echo e($get->answer1); ?></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="<?php echo e($get->answer1); ?>" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" <?php
                                    if($get->answer1 == $get->answertrue){
                                        echo "checked";
                                    }
                                ?>>
                            </div>
                        </div>                  
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 2</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer2" id="" class="w-100 form-control"><?php echo e($get->answer2); ?></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="<?php echo e($get->answer2); ?>" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" <?php
                                if($get->answer2 == $get->answertrue){
                                    echo "checked";
                                }
                            ?>>
                            </div>
                        </div>                  
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 3</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer3" id="" class="w-100 form-control"><?php echo e($get->answer3); ?></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="<?php echo e($get->answer3); ?>" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" <?php
                                if($get->answer3 == $get->answertrue){
                                    echo "checked";
                                }
                            ?>>
                            </div>
                        </div>                  
                        </div>
                        <div class="mb-3">
                        <label class="form-label">Câu trả lời 4</label>
                        <div class="row">
                            <div class="col-11">
                                <textarea name="answer4" id="" class="w-100 form-control"><?php echo e($get->answer4); ?></textarea>
                            </div>
                            <div class="col-1 text-center my-auto">
                                <input value="<?php echo e($get->answer4); ?>" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" <?php
                                if($get->answer4 == $get->answertrue){
                                    echo "checked";
                                }
                            ?>>
                            </div>
                        </div>                  
                        </div>
                        <div class="text-center">
                        <button type="submit" class="btn btn-primary">Cập nhật</button>
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
                            <textarea name="answer1" id="" class="w-100 form-control"></textarea>
                        </div>
                        <div class="col-1 text-center my-auto">
                            <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                        </div>
                    </div>                  
                    </div>
                    <div class="mb-3">
                    <label class="form-label">Câu trả lời 2</label>
                    <div class="row">
                        <div class="col-11">
                            <textarea name="answer2" id="" class="w-100 form-control"></textarea>
                        </div>
                        <div class="col-1 text-center my-auto">
                            <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                        </div>
                    </div>                  
                    </div>
                    <div class="mb-3">
                    <label class="form-label">Câu trả lời 3</label>
                    <div class="row">
                        <div class="col-11">
                            <textarea name="answer3" id="" class="w-100 form-control"></textarea>
                        </div>
                        <div class="col-1 text-center my-auto">
                            <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                        </div>
                    </div>                  
                    </div>
                    <div class="mb-3">
                    <label class="form-label">Câu trả lời 4</label>
                    <div class="row">
                        <div class="col-11">
                            <textarea name="answer4" id="" class="w-100 form-control"></textarea>
                        </div>
                        <div class="col-1 text-center my-auto">
                            <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
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
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/mng-question-edit.blade.php ENDPATH**/ ?>