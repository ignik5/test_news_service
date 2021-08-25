<?php

namespace App\Providers;

use App\City;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class ComposerCityProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $City = City::all();
        view()->share('City',$City);
    }
}
