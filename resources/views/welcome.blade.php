<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TraCuuVB172</title>
  <link rel="shortcut icon" type="image/png" href="{{ asset('/public/img-web/logo172.png') }}" />
  <link rel="stylesheet" href="{{ asset('/public/client/css/styles.min.css') }}" />
  <link rel="stylesheet" href="{{ asset('/public/client/css/styles_me.css') }}" />


</head>

<body>
  <!--  Body Wrapper -->
<div  class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    @include('block.menu')
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <!--  Header Start -->
      	@include('block.menu-top')
      <!--  Header End -->

        <!--  Row 1 -->
        @yield('main')
        
        {{-- <div class="py-6 px-6 text-center">
          	<p class="mb-0 fs-4">Create by Mquo</p>
        </div> --}}
    </div>
  </div>
  

  <script src="{{ asset('/public/ckeditor/ckeditor.js') }}"></script>
  <script src="{{ asset('/public/client/libs/jquery/dist/jquery.min.js') }}"></script>
  <script src="{{ asset('/public/client/libs/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('/public/client/js/sidebarmenu.js') }}"></script>
  <script src="{{ asset('/public/client/js/app.min.js') }}"></script>
  <script src="{{ asset('/public/client/libs/apexcharts/dist/apexcharts.min.js') }}"></script>
  <script src="{{ asset('/public/client/libs/simplebar/dist/simplebar.js') }}"></script>
  <script src="{{ asset('/public/client/js/dashboard.js') }}"></script>
  <script type="text/javascript">
    $('#search').on('keyup',function(){
        $value = $(this).val();
        $.ajax({
            type: 'get',
            url: '{{ URL::to('exam/manager/search') }}',
            data: {
                'search': $value
            },
            success:function(data){
                $('tbody').html(data);
            }
        });
    })
    $('#search-name-choice').on('keyup',function(){
        $value = $(this).val();
        $.ajax({
            type: 'get',
            url: '{{ URL::to('exam/manager/search-name-choice') }}',
            data: {
                'search': $value
            },
            success:function(data){
                $('tbody').html(data);
            }
        });
    })
    $('#search-user').on('keyup',function(){
        $value = $(this).val();
        $.ajax({
            type: 'get',
            url: '{{ URL::to('user/manager/search-user') }}',
            data: {
                'search': $value
            },
            success:function(data){
                $('tbody').html(data);
            }
        });
    })
    $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
  </script>
  
  
</body>

</html>