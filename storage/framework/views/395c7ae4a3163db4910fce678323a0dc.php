
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <?php if($data['u_r']->hasRole('Admin')): ?>
        <div class="card">
            <div class="card-body">
                <form action="<?php echo e(URL::to('document/doccate/doc-cate-add/'.$id)); ?>" method="POST">
                    <?php echo csrf_field(); ?>
                    <p class="text-center">
                        <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        Thêm loại văn bản
                        </button>
                    </p>
                    <div class="collapse" id="collapseExample">
                        <div class="card card-body w-50 m-auto">
                        <input name="name" type="text" class="form-control w-50 m-auto" placeholder="Tên loại văn bản" required>
                        <div class="text-center mt-2">
                            <button type="submit" class="btn btn-success">Thêm</button>
                        </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    <?php endif; ?>
    <div class="row">
        <?php if(isset($get_edit_doccate)): ?>
            <div class="col-md-6 m-auto">
                <div class="card p-4">
                    <h4>Tên loại</h4>
                    <form action="<?php echo e(URL::to('document/doccate/edit-doccate/'.$get_edit_doccate[0]->id)); ?>" method="POST">
                        <?php echo e(csrf_field()); ?>

                        <input class="form-control" type="text" name="name_doccate" value="<?php echo e($get_edit_doccate[0]->name); ?>" required>
                        <div class="text-center mt-1">
                            <button class="btn btn-primary" type="submit">Lưu</button>
                        </div>
                    </form>
                </div>
            </div>
        <?php else: ?>
            <?php $__currentLoopData = $doccate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body row">
                            <div class="col-8">
                                <a href="<?php echo e(URL::to('document/doc/g-document/'.$item->id)); ?>"><h5 class="card-title"><?php echo e($item->name); ?></h5></a>
                                <br>
                                <?php if($data['u_r']->hasRole('Admin')): ?>
                                    <div class="fs-8">
                                        <a href="<?php echo e(URL::to('document/doccate/delete-doccate/'.$item->id)); ?>" class="card-link"><i class="ti ti-x"></i></a>
                                        <a href="<?php echo e(URL::to('document/doccate/g-edit-doccate/'.$item->id)); ?>" class="card-link"><i class="ti ti-edit"></i></a>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <div class="col-4 text-center">
                                <h1><?php echo e(count($item->doccate_doc)); ?></h1>
                                <span>Văn bản</span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document/document_doccate.blade.php ENDPATH**/ ?>