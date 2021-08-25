<!DOCTYPE HTML>
<head>
    <meta  charset="utf-8">
    <title>Новости @yield('title')</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="csrf-token" content="{{csrf_token()}}">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
               @yield('menu')
            </ul></div>
            <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    @if(isset($city))
                    {{ $city->name}}
                    @else
                    Выбрать город
                    @endif
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
                    @foreach($City as $Cities)
                        <li>  <a class="dropdown-item" href="{{ route('allnews', $Cities) }}">{{$Cities->name}}</a></li>
                    @endforeach
                </ul>
            </div>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                @guest
                    <li class="nav-item"><a class="nav-link" href="{{ route('login.Form') }}">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('register.create') }}">Register</a></li>
                @else
                    <li class="nav-item"><a class="nav-link">{{ Auth::user()->name }} <span class="caret"></span></a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('logout') }}">Выход</a></li>
                @endguest
            </ul>
        </div>
        </div>
    </div>
</nav>
@if ($errors->any())
    <div class="alert alert-danger">
        <ul class="list-unstyled">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
@if (session('success'))
<div class="alert-success" role="alert">
    {{session('success')}}
    <button type="button" class="close" data-dismiss="alert" aria-label="close">
        <span aria-hidden="true"></span>
    </button>
</div>
@endif
<main class="py-4">
    @yield('content')
    <div>Тестовое задание Никитина Игоря</div>
</main>
<script src="{{ asset('js/app.js')}}" defer></script>
</body>
</html>
