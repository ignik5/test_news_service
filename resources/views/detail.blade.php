@extends('layouts.master')
@section('title','новость детально')
@section('menu')
    @include('menu')
@endsection
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div>
                         <h2>{{ $news->title }}</h2>
                                @auth
                                @if(empty($subscrib))
                                <a class="btn btn-primary" href="{{Route('subscribe',[$news, Auth::user()])}}" role="button">Добавить в избранное</a>
                                @else
                                <a class="btn btn-primary" href="{{Route('nosubscribe',[$news, Auth::user()])}}" role="button">Удалить из избранного</a>
                               @endif

                                @endauth

                                    <h3>Краткое описание</h3>
                                    <p>{{ $news->description }}</p>
                                                               <h3>Текст новости</h3>
                                    <p>{{ $news->text }}</p>
                                    <img src="{{  Storage::url($news->image) }}" width="200px">

                        </div>
                        <h4>похожие Новости </h4>
                        <hr>
                        <div>
                            @foreach($morenews as $morenew)
                                @if($news->id !==$morenew->id)
                                <a href="{{route('detail',$morenew)}}">
                                    <h2>{{ $morenew->title }}</h2>
                                    <p>{{ $morenew->description }}</p>
                                </a>
                                <hr>
                                @endif
                            @endforeach
                        </div>
                    </div></div></div></div>

@endsection

