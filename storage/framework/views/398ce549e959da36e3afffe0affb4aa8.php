
<?php $__env->startSection('main'); ?>
<div class=" pt-5">
    <div class="card w-100">
        <div class="card-body">
            <?php $__currentLoopData = $doc; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><?php echo e($item->doc_cate->name); ?></li>
                        <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doccate/g-doc-cate/'.$item->doc_catechild->id)); ?>"><?php echo e($item->doc_catechild->name); ?></a></li>
                        <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doc/g-document/'.$item->doc_doccate->id)); ?>"><?php echo e($item->doc_doccate->name); ?></a></li>
                    </ol>
                </nav>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <h2 class="">(<?php echo e($doc[0]['document_code']); ?>) <?php echo e($doc[0]['title']); ?></h2>
            <strong><?php echo e($doc[0]->doc_user->fullname); ?></strong>
            <span>- Thời gian cập nhật:
                <?php
                    $timedata = $doc[0]['updated_at'];
                    $date = new DateTime($timedata);
                    echo $date->format('d-m-Y H:i:s');
                ?>
            </span>
            <div class="container text-center mt-2">
                <?php $__currentLoopData = $doc_img; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                        $subject = $item->name;
                    ?>   
                    <?php if(preg_match("/\.pdf$/i", $subject)): ?>
                        <iframe src="<?php echo e(URL::to('./public/images/'.$item->name)); ?>" width="100%" height="950px" frameborder="0"></iframe>
                    <?php else: ?>
                        <img class="w-75 mt-2 w-xs-100" src="<?php echo e(asset('/public/images/'.$item->name)); ?>" alt="">
                    <?php endif; ?>  
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>

            
            <div class="mt-3">
                <hr>
                <h3>Văn bản liên quan</h3>
                <div class="row">
                    <?php if(count($related) > 0): ?>
                        <?php $__currentLoopData = $related; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tt): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-3">
                                <div class="card">
                                    <div class="card-body">
                                        <a href="<?php echo e(route('document.detail', $tt->id)); ?>">
                                            <?php
                                                echo substr($tt->title, 0, 137)
                                            ?>
                                        </a>
                                        <br>
                                        <strong> <?php echo e($tt->updated_at); ?> </strong>
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item"><?php echo e($tt->doc_cate->name); ?></li>
                                                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doccate/g-doc-cate/'.$tt->doc_catechild->id)); ?>"><?php echo e($tt->doc_catechild->name); ?></a></li>
                                                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doc/g-document/'.$tt->doc_doccate->id)); ?>"><?php echo e($tt->doc_doccate->name); ?></a></li>
                                            </ol>
                                        </nav>                                
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <?php $__currentLoopData = $relatedcate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-3">
                                <div class="card">
                                    <div class="card-body">
                                        <a href="<?php echo e(route('document.detail', $cate->id)); ?>">
                                            <?php
                                                echo substr($cate->title, 0, 125)
                                            ?>
                                        </a>
                                        <br>
                                        <strong> <?php echo e($cate->updated_at); ?> </strong>
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item"><?php echo e($cate->doc_cate->name); ?></li>
                                                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doccate/g-doc-cate/'.$cate->doc_catechild->id)); ?>"><?php echo e($cate->doc_catechild->name); ?></a></li>
                                                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doc/g-document/'.$cate->doc_doccate->id)); ?>"><?php echo e($cate->doc_doccate->name); ?></a></li>
                                            </ol>
                                        </nav>                                
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document/document_detail.blade.php ENDPATH**/ ?>