<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AdministratorsController extends Controller {

    use AuthenticatesUsers;

    protected $loginView = 'administrators.login';
    protected $guard = 'admins';

    public function showLoginform() {

        return view('administrators.login');
    }
    
    function __construct() {
        $this->middleware('auth:admins',['only'=>['secret']]);
    }
    
    public function authenticated() {
        return redirect('admins/area');
    }
    
    public function secret(){
        
        return 'Hoola'. auth('admins')->user()->name;
    }

}
