
<?php $__env->startSection('main'); ?>
<div class="card w-100">
    <div class="card-body p-4">
      <h5 class="card-title fw-semibold mb-4">Danh sách văn bản, tài liệu</h5>
      <div class="row ">
        <div class="col-2 text-center">
          <a href="<?php echo e(URL::to('/g_document')); ?>" class="btn btn-success"><i class="ti ti-plus"></i></a>
        </div>
        <div class="col-5">
          <input class="form-control" type="search" name="" id="" placeholder="Tìm kiếm">
        </div>
      </div>
      
      <div class="table-responsive">
        <table class="table table-hover text-nowrap mb-0 align-middle">
          <thead class="text-dark fs-4">
            <tr>
              <th class="border-bottom-0">
                <h6 class="fw-semibold mb-0">STT</h6>
              </th>
              <th class="border-bottom-0">
                <h6 class="fw-semibold mb-0">Tên văn bản</h6>
              </th>
            </tr>
          </thead>
          <tbody>     
            <tr>
              <td class="border-bottom-0"><h6 class="fw-semibold mb-0">1</h6></td>
              <td class="border-bottom-0">
                    <a href=""><h6 class="fw-semibold mb-1">Hợp đồng tổ chức khóa "Huấn luyện bồi dưỡng nghiệp vụ PCCC"</h6></a>
                    <span class="fw-normal">11-10-2024</span>                          
              </td>
              <td class="border-bottom-0 fs-8">
                <a href=""><i class="ti ti-heart-plus"></i></a>
              </td>
            </tr>                       
          </tbody>
        </table>
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/document.blade.php ENDPATH**/ ?>