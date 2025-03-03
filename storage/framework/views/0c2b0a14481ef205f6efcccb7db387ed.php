
<?php $__env->startSection('main'); ?>
<div class="container-fluid">
    <div class="w-50  mx-auto">
        <div class="card">
            <div class="card-body">
                <div class=" text-center">
                    <h3>KẾT QUẢ BÀI THI</h3>
                </div>
                <div class="row">
                    <div class="col-6">
                        <h3>Số câu TL đúng</h3>
                    </div>
                    <div class="col-6 text-end">
                        <h3> <?php echo e($point[1]); ?> / <?php echo e(count($qs)); ?></h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <h3>Điểm của bạn là</h3>
                    </div>
                    <div class="col-6 text-end">
                        <h3><?php echo e($point[0]); ?></h3>
                    </div>
                </div>
                <div class="text-center">
                    <strong>11-10-2024</strong>
                </div>
            </div>
        </div>
    </div>
    <?php
        $stt = 0;
    ?>
    <?php $__currentLoopData = $qs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="card fs-5" >
            <div class="card-body">
                <h4>Câu <?php $stt++; echo $stt;?> :<?php echo e($item[0]->name); ?></h4>
                <input type="hidden" name="question[]" value="<?php echo e($item[0]->id); ?>">
                <div class="form-check" 
                <?php 
                    if( $pick['ans-'.$stt] == $item[0]->answer1 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer1 && $item[0]->answer1 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer1 && $item[0]->answer1 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                ?>
                >
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault1" value="<?php echo e($item[0]->answer1); ?>"
                    <?php 
                        if( $pick['ans-'.$stt] == $item[0]->answer1 ){
                        echo "checked";
                    } 
                    ?>
                    >
                    <label class="form-check-label" for="flexRadioDefault1">
                        A. <?php echo e($item[0]->answer1); ?>

                    </label>
                </div>
                <div class="form-check"
                <?php 
                    if( $pick['ans-'.$stt] == $item[0]->answer2 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer2 && $item[0]->answer2 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer2 && $item[0]->answer2 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                ?>
                >
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault2" value="<?php echo e($item[0]->answer2); ?>"
                    <?php 
                        if($pick['ans-'.$stt] == $item[0]->answer2){
                            echo "checked";
                        }
                    ?>
                    >
                    <label class="form-check-label" for="flexRadioDefault2">
                        B. <?php echo e($item[0]->answer2); ?>

                    </label>
                </div>
                <div class="form-check"
                <?php 
                    if( $pick['ans-'.$stt] == $item[0]->answer3 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer3 && $item[0]->answer3 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer3 && $item[0]->answer3 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                ?>
                >
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault3" value="<?php echo e($item[0]->answer3); ?>"
                    <?php 
                        if($pick['ans-'.$stt] == $item[0]->answer3){
                            echo "checked";
                        }
                    ?>
                    >
                    <label class="form-check-label" for="flexRadioDefault1">
                        C. <?php echo e($item[0]->answer3); ?>

                    </label>
                </div>
                <div class="form-check"
                <?php 
                    if( $pick['ans-'.$stt] == $item[0]->answer4 && $pick['ans-'.$stt] == $item[0]->answertrue){
                        echo "style='background-color: #33CC33; color:white;'";
                    } elseif($pick['ans-'.$stt] == $item[0]->answer4 && $item[0]->answer4 != $item[0]->answertrue){
                        echo "style='background-color: #FF3333; color:white;'";
                    } elseif($pick['ans-'.$stt] != $item[0]->answer4 && $item[0]->answer4 == $item[0]->answertrue){
                        echo "style='background-color: rgb(152,251,152); '";
                    }
                ?>
                >
                    <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault4" value="<?php echo e($item[0]->answer4); ?>"
                    <?php 
                        if($pick['ans-'.$stt] == $item[0]->answer4){
                            echo "checked";
                        }
                    ?>
                    >
                    <label class="form-check-label" for="flexRadioDefault2">
                        D. <?php echo e($item[0]->answer4); ?>

                    </label>
                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
    <div class="text-center">
        <a href="<?php echo e(URL::to('/exam/back-choice-home')); ?>" class="btn btn-outline-success">Trở về</a>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/choiceresult.blade.php ENDPATH**/ ?>