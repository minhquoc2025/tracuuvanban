
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
  <h3>Tìm kiếm văn bản, tài liệu</h3>
  <div class="card w-100">
    <div class="card-body p-4">
      
      <div></div>
      <?php $__currentLoopData = $breadcrumb; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $bcb): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item active"><?php echo e($bcb->doccate_cate->name); ?></li>
          <li class="breadcrumb-item"><a href="<?php echo e(URL::to('document/doccate/g-doc-cate/'.$bcb->doccate_catechild->id)); ?>"><?php echo e($bcb->doccate_catechild->name); ?></a></li>
          <li class="breadcrumb-item active" aria-current="page"><?php echo e($bcb->name); ?></li>
        </ol>
      </nav>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      <form action="<?php echo e(URL::to('document/doc/g-search-doc/'.$doccate_id)); ?>" method="POST">
        <?php echo csrf_field(); ?>
        <div class="row ">
          <div class="col-2 text-center">
              <a href="<?php echo e(URL::to('document/doc/g-document-add/'.$doccate_id)); ?>" class="btn btn-success"><i class="ti ti-plus"></i></a>
          </div>
          <div class="col-5">
            <input class="form-control" type="search" name="title" placeholder="Tìm kiếm" value="<?php echo e($title); ?>">
          </div>
          <div class="col-1">
            <button type="submit" class="btn btn-primary">Tìm</button>
          </div>
          <div class="col-4">
            <div class="row">
              <div class="col">
                <input name="date_d" type="number" max="31" min="1" placeholder="Ngày" class="form-control" value="<?php echo e($date_d ?? null); ?>">
              </div>
              <div class="col">
                <input name="date_m" type="number" max="12" min="1" placeholder="Tháng" class="form-control" value="<?php echo e($date_m ?? null); ?>">
              </div>
              <div class="col">
                <input name="date_y" type="number" placeholder="Năm" class="form-control" value="<?php echo e($date_y ?? null); ?>">
              </div>
            </div>
          </div>
        </div>
      </form>
      <div class="table-responsive">
        <table class="table table-hover text-nowrap mb-0 align-middle">
          <thead class="text-dark fs-4">
            <tr>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0">STT</h6>
              </th>
              <th class="border-bottom-2  text-center">
                <h6 class="fw-semibold mb-0">Mã số văn bản</h6>
              </th>
              <th class="border-bottom-2  text-center">
                <h6 class="fw-semibold mb-0">Loại văn bản</h6>
              </th>
              <th class="border-bottom-2">
                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
              </th>
              <th class="border-bottom-2 text-center">
                <h6 class="fw-semibold mb-0">Chức năng</h6>
              </th>
            </tr>
          </thead>
          <tbody> 
            <?php
                $stt = 1;
            ?> 
            <?php if(count($products)>0): ?>
              <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <tr>
                <td class="border-bottom-0 col-1">
                  <h6 class="fw-semibold mb-0"><?php echo e($stt++); ?></h6>
                </td>
                <td class="border-bottom-0 col-1">
                  <h6 class="fw-semibold mb-0"><?php echo e($item->document_code); ?></h6>
                </td>
                <td class="border-bottom-0 col-1">
                  <h6 class="fw-semibold mb-0"><?php echo e($item->type); ?></h6>
                </td>
                <td class="border-bottom-0 text-wrap">
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
                <td class="border-bottom-0 fs-8 text-center col-1">
                  <?php if($item->like_user->isEmpty()): ?>
                      <a href="<?php echo e(URL::to('document/doc/like-doc/'.$item->id)); ?>"><i class="ti ti-heart-plus"></i></a>
                    <?php else: ?>                  
                      <?php $__currentLoopData = $item->like_user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($role->id == Session('id_user') && $role->pivot->doc_id == $item->id): ?>
                          <a class="text-warning" href="<?php echo e(URL::to('document/doc/un-like-doc/'.$item->id)); ?>"><i class="ti ti-heart"></i></a>
                        <?php else: ?>
                          <a href="<?php echo e(URL::to('document/doc/like-doc/'.$item->id)); ?>"><i class="ti ti-heart-plus"></i></a>
                        <?php endif; ?>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
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

                <td class="text-center"><h3>Không có văn bản, tài liệu nào</h3></td>
                <td></td>
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

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document/document_search.blade.php ENDPATH**/ ?>