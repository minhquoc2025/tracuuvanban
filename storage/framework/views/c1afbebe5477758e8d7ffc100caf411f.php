
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu</h5>
      <?php $__currentLoopData = $breadcrumb; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $bcb): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item active"><?php echo e($bcb->doccate_cate->name); ?></li>
          <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doccate/g-doc-cate/'.$bcb->doccate_catechild->id)); ?>"><?php echo e($bcb->doccate_catechild->name); ?></a></li>
          <li class="breadcrumb-item active" aria-current="page"><?php echo e($bcb->name); ?></li>
        </ol>
      </nav>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      <form action="<?php echo e(URL::to('document/doc/g-search-doc/'.$id_doccate)); ?>" method="GET">
        <?php echo csrf_field(); ?>
        <div class="row">
          <div class="col-2 text-center">
              <a href="<?php echo e(URL::to('document/doc/g-document-add/'.$id_doccate)); ?>" class="btn btn-success"><i class="ti ti-plus"></i></a>
          </div>
          <div class="col-5">
            <input class="form-control" type="search" name="title" id="" placeholder="Tìm kiếm">
          </div>
          <div class="col-2">
            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
          </div>
          <div class="col-3">
          </div>
        </div>
      </form>
      <div class="table-responsive">
        <table class="table table-hover text-nowrap mb-0 align-middle">
          <thead class="text-dark fs-4">
            <tr>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0 col-1">STT</h6>
              </th>
              <th class="border-bottom-2 text-center">
                <h6 class="fw-semibold mb-0 col-2">Mã số văn bản</h6>
              </th>
              <th class="border-bottom-2 text-center">
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
            <?php if(count($doc)>0): ?>
              <?php $__currentLoopData = $doc; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                  <td class="border-bottom-0 col-1">
                    <h6 class="fw-semibold mb-0"><?php echo e($stt++); ?></h6>
                  </td>
                  <td class="col-1">
                    <h6><?php echo e($item->document_code); ?></h6>
                  </td>
                  <td class="col-1">
                    <h6><?php echo e($item->type); ?></h6>
                  </td>
                  <td class="border-bottom-0 text-wrap text-break" >
                    <a href="<?php echo e(URL::to('document/doc/g-detail/'.$item->id)); ?>">
                      <h6 class="fw-semibold mb-1"><?php echo e($item->title); ?></h6>
                      <span class="fw-normal text-dark">
                        <?php
                          $substring= substr($item->content, 0, 11);
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
                <td class="text-center">
                  <h3>Chưa có văn bản, tài liệu nào được thêm vào</h3>
                </td>
                <td></td>
                <td></td>
              </tr> 
            <?php endif; ?>
          </tbody>
        </table>
        <?php echo e($doc->links()); ?>

      </div>
    </div>
  </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document/document.blade.php ENDPATH**/ ?>