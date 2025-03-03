
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="text-center">
        <h3>VĂN BẢN CỦA TÔI</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu yêu thích</h5>
            <div class="table-responsive">
                <table class="table table-hover text-nowrap mb-0 align-middle">
                    <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0">STT</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-1">Mã số văn bản</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0">Loại văn bản</h6>
                            </th>
                            <th class="border-bottom-2 text-center">
                                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-1">Chức năng</h6>
                            </th>
                        </tr>
                    </thead>
                    <?php
                        $stt = 1;
                    ?> 
                    <tbody> 
                        <?php if(count($data['document'])>0): ?>
                            <?php $__currentLoopData = $data['document']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($item->like_user->isNotEmpty()): ?>
                            <?php $__currentLoopData = $item->like_user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $document): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($document->pivot->user_id == Session('id_user')): ?>
                                <tr>
                                    <td class="border-bottom-0">
                                        <h6 class="fw-semibold mb-0"><?php echo e($stt++); ?></h6>
                                    </td>
                                    <td>
                                        <h6><?php echo e($item->document_code); ?></h6>
                                    </td>
                                    <td>
                                        <h6><?php echo e($item->type); ?></h6>
                                    </td>
                                    <td class="border-bottom-0 text-wrap text-break" >
                                        <a href="<?php echo e(URL::to('document/doc/g-detail/'.$item->id)); ?>">
                                            <h6 class="fw-semibold mb-1"><?php echo e($item->title); ?></h6>
                                            <span class="fw-normal text-dark">
                                            <?php
                                                $substring= substr($item->created_at, 0, 11);
                                                $formattedDate = date('d/m/Y', strtotime($substring));
                                                echo $formattedDate;
                                            ?>
                                            </span>  
                                        </a>                        
                                    </td>
                                    <td class="border-bottom-0 fs-8 text-center">
                                        <?php if($document->pivot->user_id == Session('id_user') ): ?>
                                             <?php $__currentLoopData = $item->like_doc(Session('id_user')); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <a class="text-warning" href="<?php echo e(URL::to('document/doc/un-like-doc/'.$item->id)); ?>"><i class="ti ti-heart"></i></a>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <a href="<?php echo e(URL::to('document/doc/like-doc/'.$item->id)); ?>"><i class="ti ti-heart-plus"></i></a>
                                        <?php endif; ?>
                                        <?php if($data['u_r']->hasRole('Admin')): ?>
                                        <a onclick="delete()" class="text-danger" href="<?php echo e(URL::to('document/doc/delete-doc/'.$item->id)); ?>"><i class="ti ti-x"></i></a>
                                        <a href="<?php echo e(URL::to('document/doc/g-edit-doc/'.$item->id)); ?>"><i class="ti ti-edit"></i></a>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="text-center">
                                    <h3>Chưa có văn bản, tài liệu nào được thêm vào</h3>
                                </td>
                                <td></td>
                                <td></td>
                            </tr> 
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu đã đăng</h5>
            <div class="table-responsive">
                <table class="table table-hover text-nowrap mb-0 align-middle">
                    <thead class="text-dark fs-4">
                        <tr>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0">STT</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-2">Mã số văn bản</h6>
                            </th>
                            <th class="border-bottom-2 col-1">
                                <h6 class="fw-semibold mb-0 col-2">Loại văn bản</h6>
                            </th>
                            <th class="border-bottom-2 text-center">
                                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
                            </th>
                            <th class="border-bottom-2 text-center">
                                <h6 class="fw-semibold mb-0 col-1">Chức năng</h6>
                            </th>
                        </tr>
                    </thead>
                    <?php
                        $stt = 1;
                    ?> 
                    <tbody>
                        <?php if($data['u_r']->all_doc->count()>0): ?>
                            <?php $__currentLoopData = $data['u_r']->all_doc; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td class="border-bottom-0">
                                        <h6 class="fw-semibold mb-0"><?php echo e($stt++); ?></h6>
                                    </td>
                                    <td>
                                        <h6><?php echo e($item->document_code); ?></h6>
                                    </td>
                                    <td>
                                        <h6><?php echo e($item->type); ?></h6>
                                    </td>
                                    <td class="border-bottom-0 text-wrap text-break" >
                                        <a href="<?php echo e(URL::to('document/doc/g-detail/'.$item->id)); ?>">
                                            <h6 class="fw-semibold mb-1"><?php echo e($item->title); ?></h6>
                                            <span class="fw-normal text-dark">
                                            <?php
                                                $substring= substr($item->created_at, 0, 11);
                                                $formattedDate = date('d/m/Y', strtotime($substring));
                                                echo $formattedDate;
                                            ?>
                                            </span>  
                                        </a>                        
                                    </td>
                                    <td class="border-bottom-0 fs-8 text-center">
                                        <?php if($item->like_user->contains($data['u_r']->id)): ?>
                                            <a class="text-warning" href="<?php echo e(URL::to('document/doc/un-like-doc/'.$item->id)); ?>"><i class="ti ti-heart"></i></a>
                                        <?php else: ?>
                                            <a href="<?php echo e(URL::to('document/doc/like-doc/'.$item->id)); ?>"><i class="ti ti-heart-plus"></i></a>
                                        <?php endif; ?>
                                        <?php if($data['u_r']->hasRole('Admin')): ?>
                                        <a onclick="delete()" class="text-danger" href="<?php echo e(URL::to('document/doc/delete-doc/'.$item->id)); ?>"><i class="ti ti-x"></i></a>
                                        <a href="<?php echo e(URL::to('document/doc/g-edit-doc/'.$item->id)); ?>"><i class="ti ti-edit"></i></a>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                        <?php else: ?>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-center">
                                    <h3>Trống</h3>
                                </td>
                                <td></td>
                            </tr> 
                        <?php endif; ?>
                        
                            
                        
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document/my_document.blade.php ENDPATH**/ ?>