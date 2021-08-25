<?php

namespace App\Http\Controllers;

use App\News;
use App\City;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class ManyController extends Controller
{
     public function index()
     {
         if(Auth::check()){
         $User = Auth::user();
         $news=$User->subscribe();
     }
     else
     {
         $news=News::where('isbranoe' ,'1')->paginate(5);
     }
           return view('news', compact('news'));
     }

     public function allnews(City $city = null)
     {
         if(isset($city)) {
             $news = $city->news();
         }
         else{
             $news=News::paginate(5);
         }
            return view('news', compact('news','city'));
     }

    /**
     *
     * @param  \App\News $news
     *
     */
     public function detail(News $news)
     {
         $subscrib = null;
         if(Auth::check()) {
             $subscribe = $news->subscribe();
             foreach ($subscribe as $subscribs) {
                 if ($subscribs->id == Auth::user()->id) {
                     $subscrib = $subscribs;
                     break;
                 }
             }
         }
         else{
             $subscrib = false;
         }
         $tag = $news->tags();
         $morenews = $tag->news();
         return view('detail', compact('news','morenews', 'subscrib'));
     }

     public function poisk(Request $request)
     {
            $news=News::where('text', 'LIKE', '%'.$request->text.'%' )
                ->orwhere('title', 'LIKE', '%'.$request->text.'%' )
                ->orwhere('description', 'LIKE', '%'.$request->text.'%' )->paginate(5);
            return view('news', compact('news'));
     }

}
