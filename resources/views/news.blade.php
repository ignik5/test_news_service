@extends('layouts.master')
@section('title','Главная')
@section('menu')
    @include('menu')
@endsection
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h2>Новости </h2>
                        <hr>
                        <div>
                            @foreach($news as $new)
                                <a href="{{route('detail',$new)}}">
                                    <h2>{{ $new->title }}</h2>
                                <p>{{ $new->description }}</p>
                                </a>
                                <hr>
                            @endforeach
                        </div>
                        {{ $news->links() }}
                    </div></div></div></div>
@endsection
