<li class="nav-item"><a class="nav-link" href="{{route('home')}}">Избранные новости</a>
</li>
<li class="nav-item"><a class="nav-link" href="{{route('allnews')}}">Все новости</a>
</li>

<form method="POST" class="navbar-form navbar-left" role="search"  action="{{ route('poisk') }}">
    @csrf
    <div class="form-group">
        <input type="text" class="form-control" name="text" placeholder="Search">

        <button type="submit" class="btn btn-default">поиск</button>
    </div>
</form>











