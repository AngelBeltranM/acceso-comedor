<html>
    

<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">


<head>
    <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Bienvenido') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <script src="{{ asset('js/app.js') }}"></script>

    <link href="{{ asset('libraries/fontawesome-free-5.15.3-web/css/all.css') }}" rel="stylesheet">

    <script src="{{ asset('libraries/sweetalert/sweetalert2.js') }}"></script>
    <link href="{{ asset('libraries/sweetalert/sweetalert2.min.css') }}" rel="stylesheet">

    <link href="{{ asset('css/header.css') }}" rel="stylesheet">

    <script type="text/javascript">
        $(document).ready(function() {
            var blink_interval = setInterval(switch_title_properties, 1000);

            function switch_title_properties() {

                if (blink) {
                    $("#blink").removeClass().addClass("luz_on");
                } else {
                    $("#blink").removeClass().addClass("luz");
                }

                blink = !blink;

            }

        });



    </script>
</head>

<body>


    <div class="header">

        <div id="silverfox" class="div_marquee">
            <h2 class="h4_marquee">
                <marquee>
                    <img src="{{asset('images/rino.png')}}" class="img-fluid" width="50px" height="50px">
                     ACCESO AL COMEDOR FUERZA CIVIL
                    <img src="{{asset('images/fc_logo.png')}}" class="img-fluid" width="50px" height="50px" >
                </marquee>
            </h2>
            <!--<div id="app">
                <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
                    <div class="container">
                        <a class="navbar-brand">
                            {{ config('Bienvenido', 'Bienvenido') }}
                        </a>-->


                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <!-- Left Side Of Navbar -->


                            <!-- Right Side Of Navbar -->
                            <ul class="navbar-nav ms-auto">
                                <!-- Authentication Links -->
                                @guest
                                    @if (Route::has('login'))
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                        </li>
                                    @endif

                                   <!-- @if (Route::has('register'))
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                        </li>
                                    @endif -->
                                @else
                                    <li class="nav-item dropdown">
                                        <a id="navbarDropdown" class="btn btn-primary  active" >
                                            {{ Auth::user()->name }}
                                        </a>


                                    </li>
                                @endguest
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>


        <div class="panel-heading div_title">
            <div class="row">
                <div class="col-2 col-sm-2 col-md-1 d-flex align-items-center">
                    <img src="{{asset('images/2.jpeg')}}" class="img_fc_logo" alt="fc_logo">

                </div>
                <div class="col-8 col-sm-8 col-md-10 d-flex align-items-center">
                    <h4 class="luz" id="blink">INSTITUCION POLICIAL ESTATAL FUERZA CIVIL</h4>
                </div>
                <div class="col-2 col-sm-2 col-md-1 d-flex align-items-center">
                    <img src="{{asset('images/3.jpg')}}" class="img_fc_logo" alt="rino">
                </div>
            </div>
        </div>
    </div>
