
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
  <h3>Chỉnh sửa văn bản, tài liệu</h3>
  <div class="card">
      <div class="card-body">
        <?php $__currentLoopData = $doc; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <form action="<?php echo e(URL::to('document/doc/edit-doc/'.$item->id)); ?>" method="POST" enctype="multipart/form-data">
          <?php echo csrf_field(); ?>
          <div class="mb-3">
            <div class="row">
              <div class="col">
                <label for="exampleInputEmail1" class="form-label">Loại</label>
                <select name="id_doccate" class="form-control" >
                  <option value="<?php echo e($item->doc_doccate->id); ?>"><?php echo e($item->doc_doccate->name); ?></option>
                </select>
              </div>
                <div class="col">
                  <label for="exampleInputEmail1" class="form-label">Thê loại</label>
                  <select name="id_catechild" class="form-control" >
                    <option value="<?php echo e($item->doc_catechild->id); ?>"><?php echo e($item->doc_catechild->name); ?></option>
                  </select>
                </div>
              <div class="col">
                <label for="exampleInputEmail1" class="form-label">Hạng mục</label>
                <select name="id_cate" class="form-control">
                  <option value="<?php echo e($item->doc_cate->id); ?>"><?php echo e($item->doc_cate->name); ?></option>
                </select>
              </div>
            </div> 
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </div>
          <div class="row mb-3">
            <div class="col-2">
              <label for="exampleInputEmail1" class="form-label">Mã số VB</label>
              <input type="text" class="form-control" name="document_code" max="20" required value="<?php echo e($doc[0]['document_code']); ?>">
            </div>
            <div class="col-2">
              <label for="exampleInputEmail1" class="form-label">Thể loại</label>
              <?php
                $types = ["Kế hoạch", "Kết luận", "Hướng dẫn", "Công văn", "Quyết định", "Nghị quyết", "Nghị định", "Chỉ thị", "Thông tư", "Quy chế", "Quy định", "Khác"];
              ?>
              <select name="type" class="form-select" aria-label="Default select example">
                  <option value="Null">Loại văn bản</option>
                <?php $__currentLoopData = $types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <option value="<?php echo e($type); ?>" <?php if($doc[0]['type'] == $type): ?> selected <?php endif; ?>>
                    <?php echo e($type); ?>

                  </option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </select>
            </div>
            <div class="col-6">
              <label for="exampleInputEmail1" class="form-label">Tiêu đề</label>
              <input type="text" class="form-control" name="title" maxlength="255" value="<?php echo e($doc[0]['title']); ?>" required>
            </div>
            <div class="col-2">
              <label for="exampleInputEmail1" class="form-label">Ngày</label>
              <input type="date" class="form-control" name="document_date" required value="<?php echo e($doc[0]['content']); ?>">
            </div>
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Thêm Hình ảnh</label>
            <input class="form-control" type="file" name="world[]" multiple >
          </div>
          <div class="mb-3">
            <div class="row">
              <?php $__currentLoopData = $doc_img; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="col-sm-6 col-xl-3 p-3">
                <div class="card overflow-hidden rounded-2">
                  <div class="position-relative">
                    <a href="javascript:void(0)">
                      <img src="<?php echo e(asset('/public/pdf/icon_file.png')); ?>" class="card-img-top rounded-0" alt="...">
                    </a>
                    <a href="<?php echo e(URL::to('document/doc/delete-img/'.$item->id)); ?>" class="bg-danger rounded-circle p-2 text-white d-inline-flex position-absolute top-0 end-0" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Add To Cart">
                      <i class="ti ti-x"></i>
                    </a>                      
                  </div>
                </div>
              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
          </div>
          <div class="mb-3 text-center">
            <button type="submit" class="btn btn-primary ">Lưu</button>
          </div>
        </form>
      </div>
  </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document/document_edit.blade.php ENDPATH**/ ?>