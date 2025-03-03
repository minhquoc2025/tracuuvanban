<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tra cứu văn bản</title>
  <link rel="shortcut icon" type="image/png" href="{{ asset('/public/img-web/logo172.png') }}" />
  <link rel="stylesheet" href="{{ asset('/public/client/css/styles.min.css') }}" />
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <div
      class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
      <div class="d-flex align-items-center justify-content-center w-100">
        <div class="row justify-content-center w-100">
          <div class="col-md-8 col-lg-6 col-xxl-3">
            <div class="card mb-0">
              <div class="card-body">
                <a href="./index.html" class="text-nowrap logo-img text-center d-block py-3 w-100">
                  <img src="{{ asset('./public/img-web/logo172.png') }}" width="70" alt="" />
                </a>
                <p class="text-center">TRA CỨU VĂN BẢN Lư 172</p>
                @if (session('err'))
                <div class="alert alert-danger" role="alert">
                        {{session('err')}}
                </div>
                @elseif(session('pass'))
                <div class="alert alert-success" role="alert">
                    {{session('pass')}}
                </div>
                @else
                <div></div>
                @endif

                <form action="{{ URL::to('/handle-login')}} " method="POST">
                    {{ csrf_field() }}
                  <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email</label>
                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                  <div class="mb-4">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
                  </div>
                  <div class="d-flex align-items-center justify-content-between mb-4">
                    <div class="form-check">
                      <input class="form-check-input primary" type="checkbox" value="" id="remember" name="remember" checked>
                      <label class="form-check-label text-dark" for="flexCheckChecked">
                        Remeber me
                      </label>
                    </div>
                    <a class="text-primary fw-bold" href="./index.html">Quên mật khẩu ?</a>
                  </div>
                  <button class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" type="submit">Login</button>
                  {{-- <div class="d-flex align-items-center justify-content-center">
                    <p class="fs-4 mb-0 fw-bold">Bạn chưa có tài khoản?</p>
                    <a class="text-primary fw-bold ms-2" href="{{ URL::to('/register') }}">Đăng ký ngay</a>
                  </div> --}}
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="{{ asset('/public/client/libs/jquery/dist/jquery.min.js') }}"></script>
  <script src="{{ asset('/public/client/libs/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>
</body>

</html>