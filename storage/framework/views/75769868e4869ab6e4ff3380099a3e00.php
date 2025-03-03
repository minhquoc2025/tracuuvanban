
<?php $__env->startSection('main'); ?>
<?php
    $stt=1;
?>
<div class="container-fluid">
    <div class="text-center">
        <h3>LỊCH SỬ THAM GIA</h3>
    </div>
    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table text-nowrap mb-0 align-middle">
                  <thead class="text-dark fs-4">
                    <tr>
                      <th class="border-bottom-1 col-1r">
                        <h6 class="fw-semibold mb-0">STT</h6>
                      </th>
                      <th class="border-bottom-1 text-center">
                        <h6 class="fw-semibold mb-0">TÊN NGƯỜI DÙNG</h6>
                      </th>
                      <th class="border-bottom-1 text-center">
                        <h6 class="fw-semibold mb-0">ĐIỂM</h6>
                      </th>
                      <th class="border-bottom-1 text-center">
                        <h6 class="fw-semibold mb-0">THỂ LOẠI</h6>
                      </th>
                      <th class="border-bottom-1 col-2 text-center">
                        <h6 class="fw-semibold mb-0">THỜI GIAN</h6>
                      </th>
                    </tr>
                  </thead>
                  <tbody class="fs-3">
                    <?php if($get_choice): ?>
                      <?php $__currentLoopData = $get_choice; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">
                                    <?php
                                        echo $stt++;
                                    ?>
                                </h6>
                            </td>
                            <td class="border-bottom-0 text-center">
                                <p class="mb-0 fw-normal"><?php echo e($item->queschoice_user->fullname); ?></p>
                            </td>
                            <td class="border-bottom-0 text-center">
                                <p class="mb-0 fw-normal"><?php echo e($item->point); ?></p>
                            </td>
                            <td class="border-bottom-0 text-center">
                                <?php echo e($item->queschoice_catechild->name); ?>

                            </td>
                            <td class="border-bottom-0 text-center">
                                <?php echo e($item->created_at); ?>

                            </td>
                            
                        </tr>  
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                    <?php endif; ?>                   
                  </tbody>
                </table>
                <?php echo e($get_choice->links('pagination::bootstrap-5')); ?>

            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/history-choice.blade.php ENDPATH**/ ?>