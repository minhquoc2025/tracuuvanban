<header class="app-header">
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="w-100 text-center">
        @if (session('err'))
          <div class="alert alert-danger" role="alert">
                  {{session('err')}}
          </div>
          @elseif(session('pass'))
          <div class="alert alert-success" role="alert">
              {{session('pass')}}
          </div>
          @else
          <div class="text-center">
            <h3>TRA CỨU VĂN BẢN Lư172</h3>
          </div>
        @endif

      </div>
      <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
        <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
          <li class="navbar-brand">
            @if(session('user'))
              <span>Hi</span>
              <strong>{{session('user')}}</strong>
            @endif
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown"
              aria-expanded="false">
              <img src="{{ asset('./public/client/images/profile/user-1.jpg') }}" alt="" width="35" height="35" class="rounded-circle">
            </a>
            <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
              <div class="message-body">
                <a href="{{URL::to('/user/manager/g-detail-user/'.Session::get('id_user'))}}" class="d-flex align-items-center gap-2 dropdown-item">
                  <i class="ti ti-user fs-6"></i>
                  <p class="mb-0 fs-3">Thông tin tài khoản</p>
                </a>
                <a href="{{URL::to('/document/my-document/'.Session::get('id_user'))}}" class="d-flex align-items-center gap-2 dropdown-item">
                  <i class="ti ti-mail fs-6"></i>
                  <p class="mb-0 fs-3">VB của tôi</p>
                </a>
                <a href="{{URL::to('/exam/my-history-choice/'.Session::get('id_user'))}}" class="d-flex align-items-center gap-2 dropdown-item">
                  <i class="ti ti-list-check fs-6"></i>
                  <p class="mb-0 fs-3">Lịch sử chơi</p>
                </a>
                <a href="{{ URL::to('logout') }}" class="btn btn-outline-primary mx-3 mt-2 d-block">Logout</a>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </header>