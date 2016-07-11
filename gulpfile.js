process.env.DISABLE_NOTIFIER = true;
var elixir = require('laravel-elixir');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

elixir(function(mix) {
    mix.sass([
        'app.sass',
        '../bower/sweetalert/dist/sweetalert.css'
    ]);
    mix.scripts([
        '../bower/jquery/dist/jquery.js',
        '../bower/sweetalert/dist/sweetalert-dev.js'
    ], 'public/js/vendor.js');
});
