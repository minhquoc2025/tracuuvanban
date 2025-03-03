
<?php $__env->startSection('main'); ?>
<style>.clock {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
}

button {
    background-color: transparent;
    border: none;
    font-size: 40px;
    font-family: 'Arial', sans-serif;
    cursor: pointer;
    outline: none;
    padding: 20px;
    color: #333;
}

button:focus {
    border: none;
    outline: none;
}

#time {
    font-size: 50px;
    color: #333;
    font-weight: bold;
}
</style>
<div class="clock">
    <button class="bg-transparent border-0">
        <span name="timer" id="time">00:00</span>
    </button>	
</div>
<div class="container-fluid">
    <div class="text-center">
        <h3>TRẢ LỜI CÂU HỎI</h3>
    </div>
    <?php
        $stt = 0;
    ?>
    <form id="fruitbox" action="<?php echo e(URL::to('/exam/handle-result')); ?>" method="post">
        <?php echo e(csrf_field()); ?>

        <?php $__currentLoopData = $question; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="card">
                <div class="card-body">
                    <h5>Câu <?php $stt++; echo $stt;?> :<?php echo e($item->name); ?></h5>
                    <input type="hidden" name="question[]" value="<?php echo e($item->id); ?>">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault1" value="<?php echo e($item->answer1); ?>">
                        <label class="form-check-label" for="flexRadioDefault1">
                            A. <?php echo e($item->answer1); ?>

                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault2" value="<?php echo e($item->answer2); ?>">
                        <label class="form-check-label" for="flexRadioDefault2">
                            B. <?php echo e($item->answer2); ?>

                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault3" value="<?php echo e($item->answer3); ?>">
                        <label class="form-check-label" for="flexRadioDefault1">
                            C. <?php echo e($item->answer3); ?>

                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="ans-<?php echo $stt;?>" id="flexRadioDefault4" value="<?php echo e($item->answer4); ?>">
                        <label class="form-check-label" for="flexRadioDefault2">
                            D. <?php echo e($item->answer4); ?>

                        </label>
                    </div>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <div class="text-center">
            <button  type="submit" class="btn btn-primary">Kết thúc</button>
        </div>
    </form>
</div>
<?php
    $now = new DateTime();  // Current time as DateTime object
    $now->format('H:i:s');  // Display current time

    // Example time from $time variable
    $timestart = $time;  // Example date-time string

    $timeObj = new DateTime($timestart);  // Convert $time to DateTime object

    // Calculate the difference
    $interval = $now->diff($timeObj);

    // Get the difference in minu...
    $differenceInHours = ($count * 60) - ($interval->i * 60 + $interval->s);
?>
<input id="qo" type="text" value="<?php echo e($differenceInHours); ?>" readonly hidden>
<script type="text/javascript">
	function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10);
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.textContent = minutes + ":" + seconds;

            if (--timer < 0 ) {
                //timer = duration;
                document.getElementById('fruitbox').submit();
            }
        }, 1000);
    }
    window.onload = function (settime) {
        var settime = document.getElementById('qo').value;
        var fiveMinutes = settime, 
        display = document.querySelector('#time');
        startTimer(fiveMinutes, display);
    };
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\vanban\resources\views/pages/exam/choice.blade.php ENDPATH**/ ?>