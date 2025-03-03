
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="text-center">
        <h3>Name</h3>
    </div>
    <?php
        $stt = 0;
    ?>
    <?php $__currentLoopData = $qs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="card">
            <div class="card-body">
                <h5>Câu <?php $stt++; echo $stt;?> :<?php echo e($item->name); ?></h5>
                <input type="hidden" name="question[]" value="<?php echo e($item->id); ?>">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault1" value="<?php echo e($item->answer1); ?>">
                    <label class="form-check-label" for="flexRadioDefault1">
                        A. <?php echo e($item->answer1); ?>

                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault2" value="<?php echo e($item->answer2); ?>">
                    <label class="form-check-label" for="flexRadioDefault2">
                        B. <?php echo e($item->answer2); ?>

                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault3" value="<?php echo e($item->answer3); ?>">
                    <label class="form-check-label" for="flexRadioDefault1">
                        C. <?php echo e($item->answer3); ?>

                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault4" value="<?php echo e($item->answer4); ?>">
                    <label class="form-check-label" for="flexRadioDefault2">
                        D. <?php echo e($item->answer4); ?>

                    </label>
                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
    <div class="text-center">
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/Pages/Exam/choiceresult.blade.php ENDPATH**/ ?>