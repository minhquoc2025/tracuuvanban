<!-- Sidebar Start -->
<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    @php
     $user = App\Models\User::find(Session::get('id_user'));   
    @endphp
    <div>
      <div class="brand-logo d-flex align-items-center justify-content-between">
        <a href="{{ URL::to('/') }}" class="text-nowrap logo-img mx-auto">
          <img src="{{ asset('./public/img-web/logo172.png') }}" width="70" alt="" />
        </a>
        <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
          <i class="ti ti-x fs-8"></i>
        </div>
      </div>
      <!-- Sidebar navigation-->
      <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
        <ul id="sidebarnav">
          <li class="nav-small-cap">
            <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
            <span class="hide-menu">Home</span>
          </li>
          <li class="sidebar-item">
            <a class="sidebar-link" href="{{ URL::to('/') }}" aria-expanded="false">
              <span>
                <i class="ti ti-layout-dashboard"></i>
              </span>
              <span class="hide-menu">Trang chủ</span>
            </a>
          </li>
{{-- Văn bản --}}
          <li class="nav-small-cap">
            <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
            <span class="hide-menu">Văn bản</span>
          </li>
          @if($user->hasRole('Admin'))
          <li class="sidebar-item"> 
    {{-- add Category --}}
            <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
              <span class="d-flex">
                <i class="ti ti-calendar-plus"></i>
              </span>
              <span class="hide-menu">Thêm Hạng mục</span>
            </a>
            <ul aria-expanded="false" class="collapse first-level border border-top-0 border-primary p-2">
              <li class="sidebar-item">
                <form action="{{ URL::to('document/cate/add-category') }}" method="POST">
                  @csrf
                  <div class="w-100">
                    <input type="text" name="name_category" class="form-control" max="70" placeholder="Tên hạng mục" required>
                  </div>
                  <div class="text-center mt-2">
                    <button type="submit" class="btn btn-success">Lưu</button>
                  </div>
                </form>
              </li>
            </ul>
    {{-- end add Category --}}
          </li>
          @endif
    {{-- show edit Category --}}
          @if (!empty($get_edit_cate))
            <li class="sidebar-item">
              <form action="{{ URL::to('document/cate/edit-cate/'.$get_edit_cate[0]->id) }}" method="POST">
                {{ csrf_field() }}
                <div class="w-100">
                  <input type="text" name="name_cate" class="form-control" max="70" value="{{ $get_edit_cate[0]->name}}" required>
                </div>
                <div class="text-center mt-2">
                  <button type="submit" class="btn btn-success">Lưu</button>
                  <a class="btn btn-outline-secondary" href="{{ URL::to('back') }}">Hủy</a>
                </div>
              </form>          
            </li>
    {{-- end show edit Category --}}
          @else 
            @foreach($data['category'] as $item)
              <li class="sidebar-item">
    {{-- show Category --}}            
                <a class="sidebar-link has-arrow" href="javascript:void(0)" aria-expanded="false">
                  <span class="d-flex">
                    <i class="ti ti-zoom-code"></i>
                  </span>
                    {{$item->name}} <span class="badge bg-success bg-gradient">{{$item->cate_doc->count()}}</span>                  
                </a>
    {{-- end show Category --}}            
                <ul aria-expanded="false" class="collapse first-level border border-top-0 border-primary p-2">
                  @if (!empty($get_edit_catechild))
    {{-- show edit Category-child --}}
                    <form action="{{ URL::to('document/catechild/edit-catechild/'.$get_edit_catechild[0]->id) }}" method="POST">
                      {{ csrf_field() }}
                      <input type="text" class="form-control" name="name_catechild" max="70" value="{{ $get_edit_catechild[0]->name }}" required>
                      <div class="text-center mt-1">
                        <button type="submit" class="btn btn-primary">Lưu</button>
                        <a href="{{ URL::to('back') }}" class="btn btn-secondary">Hủy</a>
                      </div>
                    </form>
    {{-- end show edit Category-child --}}
                    @else
                      @if (count($item->cate_catechild)>0)
      {{-- show Category-child --}}
                        @foreach($item->cate_catechild as $catechild)
                          <li class="sidebar-item">
                            <a href="{{ URL::to('document/doccate/g-doc-cate/'.$catechild->id) }}" class="sidebar-link">
                              <div class="round-16 d-flex align-items-center justify-content-center">
                                <i class="ti ti-circle"></i>
                              </div>
                              <span class="">{{$catechild->name}}</span>
                            </a>
                          </li>
                          @if($user->hasRole('Admin'))
                          <div class="text-center fs-5">
                            <a class="text-danger" href="{{ URL::to('document/catechild/delete-catechild/'.$catechild->id)}}"><i class="ti ti-x"></i></a>
                            <a href="{{ URL::to('document/catechild/g-edit-catechild/'.$catechild->id) }}"><i class="ti ti-edit"></i></a>
                          </div>
                          @endif
                          <hr>
                        @endforeach
      {{-- end show Category-child --}}
                        <hr>
      {{-- add Category-child --}}
                      @if($user->hasRole('Admin'))
                        <li class="sidebar-item">
                          <form action="{{ URL::to('document/catechild/add-catechild/'.$item->id) }}" method="POST">
                            {{ csrf_field() }}
                            <div class="w-100">
                              <input type="text" name="name_category" max="70" class="form-control" placeholder="Tên thể loại" required>
                            </div>
                            <div class="text-center mt-2">
                              <button type="submit" class="btn btn-success">Lưu</button>
                            </div>
                          </form>
                        </li>
                        @endif
      {{-- end add Category-child --}}
                      @else
                        <li class="sidebar-item">
                          <p class="sidebar-link"  aria-expanded="false">
                            <span class="hide-menu">Không có thể loại nào</span>
                          </p>
                        </li>
                        <li class="sidebar-item">
                          <form action="{{ URL::to('document/catechild/add-catechild/'.$item->id) }}" method="POST">
                            @csrf
                            <div class="w-100">
                              <input type="text" name="name_category" class="form-control" placeholder="Tên thể loại" required>
                            </div>
                            <div class="text-center mt-2">
                              <button type="submit" class="btn btn-danger">Lưu</button>
                            </div>
                          </form>
                        </li>
                      @endif
                    @endif
                  </ul>
    {{-- Chức năng Category --}}
              @if($user->hasRole('Admin'))
                <div class="text-center fs-5">
                  <a class="text-danger" href="{{ URL::to('document/cate/delete-category/'.$item->id) }}"><i class="ti ti-x"></i></a>
                  <a href="{{ URL::to('document/cate/g-edit-cate/'.$item->id)}}"><i class="ti ti-edit"></i></a>
                </div>
              @endif
    {{-- end Chức năng Category --}}
                <hr>
              </li>  
            @endforeach
          @endif
            
          
          

{{-- Tài khoản --}}
          <li class="nav-small-cap">
            <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
            <span class="hide-menu">Tài khoản</span>
          </li>
          @if($user->hasRole('Admin'))
          <li class="sidebar-item">
            <a class="sidebar-link" href="{{ URL::to('user/manager/list-user/')}}" aria-expanded="false">
              <span>
                <i class="ti ti-login"></i>
              </span>
              <span class="hide-menu">Danh sách tài khoản</span>
            </a>
          </li>
          @endif
          <li class="sidebar-item">
            <a class="sidebar-link" href="{{URL::to('/user/manager/g-detail-user/'.Session::get('id_user'))}}" aria-expanded="false">
              <span>
                <i class="ti ti-user-plus"></i>
              </span>
              <span class="hide-menu">Quản lý tài khoản</span>
            </a>
          </li>
{{-- Kiểm tra --}}
          <li class="nav-small-cap">
            <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
            <span class="hide-menu">Kiểm tra</span>
          </li>
          <li class="sidebar-item">
            <a class="sidebar-link" href="{{ URL::to('exam/choice-home') }}" aria-expanded="false">
              <span>
                <i class="ti ti-mood-happy"></i>
              </span>
              <span class="hide-menu">Kiểm tra</span>
            </a>
          </li>
          @if($user->hasRole('Admin') || $user->hasRole('Quản lý'))
            <li class="sidebar-item">
              <a class="sidebar-link" href="{{ URL::to('exam/manager/g-home-manager') }}" aria-expanded="false">
                <span>
                  <i class="ti ti-aperture"></i>
                </span>
                <span class="hide-menu">Quản lý kiểm tra</span>
              </a>
            </li>
          @endif 
        </ul>
        
      </nav>
      <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
  </aside>
  <!--  Sidebar End -->