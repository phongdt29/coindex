@extends('frontend.ajax')
@section('content')

@foreach($data as $item)

<div class="col-lg-4" style="padding-bottom: 25px;">
    <div class="ts-grid-box ts-grid-content ts-grid-content-1">
        <div class="item">
            <div class="ts-post-thumb">
                <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">
                <img class="img-fluid" src="{{ $item->image}}" alt="">
                </a>
            </div>
            <div class="post-content">
                <a class="post-cat" href="{{ route('theloai',['slug' => $item->cslug]) }}">{!! $item->title !!}</a>
                <h3 class="post-title" style="height: 56px;">
                    <a href="{{ route('chitiet',['slug' => $item->pslug]) }}">{!! $item->title !!}
                    </a>
                </h3>
                <span class="post-date-info">
                <i class="fa fa-user"></i>
                {!! $item->author !!} &nbsp;
                <i class="fa fa-clock-o"></i>
                {{ date('d/m/Y',strtotime($item->created_at)) }}
                </span>
            </div>
        </div>
        <!-- item end-->
    </div>                  
</div>
@endforeach

@endsection