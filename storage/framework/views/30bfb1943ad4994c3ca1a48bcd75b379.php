
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <div class="text-center">
                <h3>KIỂM TRA KIẾN THỨC</h3>
            </div>
            
            <div class="row mt-3">
                <?php $__currentLoopData = $cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body row">
                                <div class="col-8">
                                    <a href="<?php echo e(URL::to('exam/g-choice-catechild/'.$item->id)); ?>"><h5 class="card-title"><?php echo e($item->name); ?></h5></a>
                                    <br>
                                </div>
                                <div class="col-4 text-center">
                                    <h1><?php echo e(count($item->cate_question)); ?></h1>
                                    <span>Câu hỏi</span>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/choice-home.blade.php ENDPATH**/ ?>