<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;

//use Illuminate\Foundation\Auth\AuthenticatesUsers;

class ModelController extends Controller {

    // use AuthenticatesUsers;
    //protected $loginView = 'administrators.login';
    //protected $guard = 'admins';

    public function index() {

        return redirect('http://localhost/Autenticacion/app/bitcoin.php');
    }

    public function consulta() {

        return redirect('http://localhost/Autenticacion/app/consulta.php');
    }

    public function update() {
        return redirect('http://localhost/Autenticacion/app/formuUpdate.php');
    }

    public function coin() {


        return redirect('http://localhost/Autenticacion/app/consulta.php');
    }

    public function coingo() {


        return redirect('http://localhost/Autenticacion/resources/views/forms/form.blade.php');
    }

//    function __construct() {
//        $this->middleware('auth:admins',['only'=>['secret']]);
//    }
//    public function authenticated() {
//        return redirect('admins/area');
//    }
//    public function secret(){
//        
//        return 'Hoola'. auth('admins')->user()->name;
//    }
}
