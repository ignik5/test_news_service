<?php

namespace App\Http\Controllers;

use App\News;
use App\User;
use App\users_news;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    public function create()
    {
        return view('create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed',
        ]);
        $user = User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
        ]);//создание юзера
        session()->flash('success', 'Регистрация прошла успешно');
        Auth::login($user);
        return redirect()->route('home');
    }
    public function loginForm()
    {
        return view('login');
    }
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if(Auth::attempt([
            'email' =>$request->email,
            'password' =>$request->password,
        ]))
        {
            session()->flash('success', 'Вы авторизованы');
            return redirect()->route('home');
        }
        else
        {
            return redirect()->back()->with('error', 'Неправильный логин или пароль');
        }
    }
    public function logout()
    {
        Auth::logout();//проводим выход из системы
        return redirect()->route('login.Form');//возвращаем форму авторизации
    }
    public function subscribe(News $news, User $user)
    {
        users_news::create([
            'user_id'=>$user->id,
            'news_id'=>$news->id,
                    ]);
        return redirect()->back();
    }
    public function nosubscribe(News $news, User $user)
    {
        $users_news = users_news::where('user_id',$user->id)->where('news_id',$news->id)->delete();
        return redirect()->back();
    }
}
