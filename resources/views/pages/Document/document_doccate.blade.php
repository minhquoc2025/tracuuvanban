@extends('welcome')
@section('main')
<div class="container-fluid">
    @if ($data['u_r']->hasRole('Admin'))
        <div class="card">
            <div class="card-body">
                <form action="{{ URL::to('document/doccate/doc-cate-add/'.$id) }}" method="POST">
                    @csrf
                    <p class="text-center">
                        <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        Thêm loại văn bản
                        </button>
                    </p>
                    <div class="collapse" id="collapseExample">
                        <div class="card card-body w-50 m-auto">
                        <input name="name" type="text" class="form-control w-50 m-auto" placeholder="Tên loại văn bản" required>
                        <div class="text-center mt-2">
                            <button type="submit" class="btn btn-success">Thêm</button>
                        </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    @endif
    <div class="row">
        @if(isset($get_edit_doccate))
            <div class="col-md-6 m-auto">
                <div class="card p-4">
                    <h4>Tên loại</h4>
                    <form action="{{ URL::to('document/doccate/edit-doccate/'.$get_edit_doccate[0]->id) }}" method="POST">
                        {{ csrf_field() }}
                        <input class="form-control" type="text" name="name_doccate" value="{{ $get_edit_doccate[0]->name }}" required>
                        <div class="text-center mt-1">
                            <button class="btn btn-primary" type="submit">Lưu</button>
                        </div>
                    </form>
                </div>
            </div>
        @else
            @foreach ($doccate as $item)
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body row">
                            <div class="col-8">
                                <a href="{{ URL::to('document/doc/g-document/'.$item->id) }}"><h5 class="card-title">{{ $item->name }}</h5></a>
                                <br>
                                @if ($data['u_r']->hasRole('Admin'))
                                    <div class="fs-8">
                                        <a href="{{ URL::to('document/doccate/delete-doccate/'.$item->id) }}" class="card-link"><i class="ti ti-x"></i></a>
                                        <a href="{{ URL::to('document/doccate/g-edit-doccate/'.$item->id) }}" class="card-link"><i class="ti ti-edit"></i></a>
                                    </div>
                                @endif
                            </div>
                            <div class="col-4 text-center">
                                <h1>{{count($item->doccate_doc)}}</h1>
                                <span>Văn bản</span>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
</div>
@endsection