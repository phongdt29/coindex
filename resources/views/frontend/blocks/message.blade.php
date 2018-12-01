@if ($errors->any())
    <div class="alert alert-danger" role="alert">
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    </div>
@endif
@if(Session::has('success'))
    <div class="alert alert-success" role="alert">
        <strong>Thông báo:&nbsp; </strong> {{ Session::get('success') }}
    </div>
@endif    