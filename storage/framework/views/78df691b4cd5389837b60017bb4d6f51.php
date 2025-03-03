<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Weather</title>
</head>
<body>
    <div class="card">
        <div class="card-header">
            Weather
        </div>
        <div class="card-body">
           
            <?php if(isset($data['weather'])): ?>
            <strong>Thành phố: <?php echo e($data['name']); ?></strong><br>
            <strong>Tình trạng: <?php echo e($data['weather'][0]['description']); ?></strong><br>
            <strong><?php echo e($data['main']['temp']); ?></strong><br>
            <strong><?php echo e($data['main']['temp_min']); ?></strong><br>
            <strong><?php echo e($data['main']['temp_max']); ?></strong><br>
            <strong><?php echo e($data['main']['pressure']); ?></strong><br>
            <strong><?php echo e($data['main']['feels_like']); ?></strong> <br>
            <strong><?php echo e($data['main']['humidity']); ?></strong> <br>
            <strong><?php echo e($dateTime); ?></strong>
            <?php endif; ?>
        </div>
    </div>
</body>
</html><?php /**PATH C:\xampp\htdocs\vanban\resources\views/weather.blade.php ENDPATH**/ ?>