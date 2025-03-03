    
    <?php $__env->startSection('main'); ?>

    <div class="container-fluid">
        <div class="container-fluid">
            <h3>CÂU HỎI</h3>
          <div class="card">
            <div class="card-body">
                
                <?php if(isset($get)): ?>
                    <form action="<?php echo e(URL::to('exam/manager/handle-edit-question/'.$get->id)); ?>" method="POST" onsubmit="setValue()">
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
                                    <textarea name="answer1" id="answer1" class="w-100 form-control"><?php echo e($get->answer1); ?></textarea>
                                </div>
                                <div class="col-1 text-center my-auto">
                                    <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check1" <?php
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
                                    <textarea name="answer2" id="answer2" class="w-100 form-control"><?php echo e($get->answer2); ?></textarea>
                                </div>
                                <div class="col-1 text-center my-auto">
                                    <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check2" <?php
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
                                    <textarea name="answer3" id="answer3" class="w-100 form-control"><?php echo e($get->answer3); ?></textarea>
                                </div>
                                <div class="col-1 text-center my-auto">
                                    <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check3" <?php
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
                                    <textarea name="answer4" id="answer4" class="w-100 form-control"><?php echo e($get->answer4); ?></textarea>
                                </div>
                                <div class="col-1 text-center my-auto">
                                    <input value="" class="form-check-input" type="radio" name="flexRadioDefault" id="check4" <?php
                                    if($get->answer4 == $get->answertrue){
                                        echo "checked";
                                    }
                                ?>>
                                </div>
                            </div>                  
                            </div>
                            <div class="text-center">
                            <input type="submit" class="btn btn-primary" value="Cập nhật">
                            </div>
                        </fieldset>
                    </form>
                
                <?php else: ?>
                
                    <form action="<?php echo e(URL::to('exam/manager/handle-add-question/'.$catechild_id)); ?>" method="POST">
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
                            <button type="submit" class="btn btn-primary" onclick="setValue()">Thêm</button>
                            </div>
                        </fieldset>
                    </form>
                
                <?php endif; ?>
            </div>
          </div>
        </div>
    </div>
    <script>
        function setValue(){
            let value1 =  document.getElementById('answer1').value;
            let value2 =  document.getElementById('answer2').value;
            let value3 =  document.getElementById('answer3').value;
            let value4 =  document.getElementById('answer4').value;
            document.getElementById('check1').value = value1;
            document.getElementById('check2').value = value2;
            document.getElementById('check3').value = value3;
            document.getElementById('check4').value = value4;
        }
    </script>
    <?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/mng-question-EditOrAdd.blade.php ENDPATH**/ ?>