<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Validator;

use App\Http\Middleware\Authenticate;
use App\Http\Requests;
use App\Models\User;
use Illuminate\Contracts\Auth\Authenticable;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    // public function authenticate()
    // {

    //     echo "call";exit;

    //     if (Auth::attempt(['email' => $email, 'password' => $password])) {
    //         // Authentication passed...
    //         return redirect()->intended('dashboard');
    //     }
    // }


    /*public function login(\Illuminate\Http\Request $request) {
        


        $this->validateLogin($request);


        $request['is_admin'] = 0;


        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);
            return $this->sendLockoutResponse($request);
        }


        //if(Auth::guard('admin')->attempt($data,true))

        // This section is the only change
        if ($this->guard()->validate($this->credentials($request))) {
            $user = $this->guard()->getLastAttempted();


            //echo "<pre>";print_r($user->is_admin);exit();

            // Make sure the user is active
            if ($user->is_admin == 0 && $this->attemptLogin($request)) {
                // Send the normal successful login response
                return $this->sendLoginResponse($request);
            } else {
                // Increment the failed login attempts and redirect back to the
                // login form with an error message.
                $this->incrementLoginAttempts($request);
                return redirect()
                    ->back()
                    ->withInput($request->only($this->username(), 'remember'))
                    ->withErrors(['active' => 'You must be active to login.']);
            }
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }*/


    public function login(\Illuminate\Http\Request $request) {
        
        $validator = Validator::make($request->all(), [
                        'email'     => 'required|email',
                        'password'  => 'required',
                    ]);

        if ($validator->fails())
        {
            return redirect()->back()->withErrors($validator->errors())->withInput(Input::all());
        }

        $remember = ($request->has('remember')) ? true : false;
        $data = array("email" => $request->email, "password" => $request->password, "is_admin" => '0');
        
        if(Auth::guard('web')->attempt($data,true))
        {
            return redirect()->route("home")
                ->with(array('alert-class'=>'alert-success', 'message'=>'You are successfully logged in.'));
        }else{
            
            return redirect()->back()
                ->with(array('alert-class'=>'alert-danger','message'=>'Invalid email or password!'))->withInput(Input::all());

            //return redirect()->back()->withInput($request->only($this->username(), 'remember'))->withErrors(['active' => 'You must be active to login.']);

        }
    }



}
