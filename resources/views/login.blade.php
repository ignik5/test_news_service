@extends('layouts.master')
@section('title','Аунтификация')

@section('menu')
    @include('menu')
@endsection
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                       <h1>Login</h1>
                        <form action="{{ route('login') }}" method="post">
                            @csrf
                            <div class="input-group mb-3">
                                <input type="email" name="email" class="form-control" placeholder="Email" value="{{ old('email') }}">
                                                          </div>
                            <div class="input-group mb-3">
                                <input type="password" name="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="row">
                                <div class="col-4 offset-8">
                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                </div>
                           </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
