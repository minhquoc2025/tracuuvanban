
<?php $__env->startSection('main'); ?>

<div class="container-fluid">
    
    <div class="row">
        <div class="col-sm-6">
            <div class="card overflow-hidden rounded-2 pt-4">
                <div class="card-body p-2 text-center">
                    <i class="ti ti-home-question fs-8"><h3 class="fw-semibold">Câu hỏi</h3></i>
                    <a class="" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Cart">
                        <h1><?php
                            echo count($data['question']);
                        ?></h1>
                    </a>            
                </div>
            </div>
          </div>
        <div class="col-sm-6">
            <div class="card overflow-hidden rounded-2 pt-4">
                <div class="card-body p-2 text-center">
                    <i class="ti ti-checklist fs-8"><h3 class="fw-semibold">Lượt chơi</h3></i>
                    <a class="" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Cart">
                        <h1><?php
                            echo $data['choice']->total();
                        ?></h1>
                    </a>            
                </div>
            </div>
        </div>
    </div>
    
</div>

<div class="card">
    <div class="card-body">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Quản lý câu hỏi</button>
                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Quản lý lượt chơi</button>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="row mt-4">
                    <?php if(isset($catechild)): ?>
                        <?php $__currentLoopData = $catechild; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $catechild): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <h5 class="card-title"><?php echo e($catechild->name); ?></h5>
                                            </div>
                                            <div class="col">
                                                <h1 class="text-end">
                                                    <?php
                                                        echo count($catechild->catechild_question);
                                                    ?>
                                                </h1>
                                            </div>
                                        </div>
                                        <a href="<?php echo e(URL::to('exam/manager/g-question/'.$catechild->id)); ?>" class="card-link">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <?php $__currentLoopData = $cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                                <h5 class="card-title"><?php echo e($category->name); ?></h5>
                                            </div>
                                            <div class="col">
                                                <h1 class="text-end"><?php
                                                    echo count($category->cate_question);
                                                ?></h1>
                                            </div>
                                        </div>
                                        <a href="<?php echo e(URL::to('exam/manager/g-cate-child/'.$category->id)); ?>" class="card-link">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
            </div>
            
            
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                
                <?php
                    $stt=1
                ?>
                <div class="card mx-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-2">
                                <h3>Danh sách tham gia</h3>
                            </div>
                            <div class="col-2">
                                <a href="<?php echo e(URL::to('exam/manager/export-choice')); ?>" data-bs-toggle="tooltip" data-bs-placement="top" title="Xuất tất cả lượt chơi ra file Excel"><i class="ti ti-file-arrow-right fs-8" style="color: red"></i></a>
                            </div>
                            <div class="col pb-3 ">
                                <input class="form-control w-50" type="text" placeholder="tìm kiếm" id="search-name-choice" name="search">
                            </div>
                            <hr style="color:blue;">
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Điểm</th>
                                <th scope="col">Thể loại</th>
                                <th scope="col">Thời gian</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $data['choice']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <th scope="row"><?php echo $stt++ ?></th>
                                        <td><?php echo e($item->queschoice_user->fullname); ?></td>
                                        <td><?php echo e($item->point); ?></td>
                                        <td><?php echo e($item->queschoice_catechild->name); ?></td>
                                        <td><?php echo e($item->created_at); ?></td>
                                    </tr> 
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                            <?php echo e($data['choice']->links()); ?>

                        </table>
                    </div>
                </div>
                
            </div>
            
        </div>
    </div>
</div>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/mng-home.blade.php ENDPATH**/ ?>