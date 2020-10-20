<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('register');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $total_record = DB::select('select count(*) from employees');
        foreach($total_record as $row){
            foreach($row as $key=>$value){
                $data_0=$value;
            }
        }
        $chuoi_dk = "%BIT%";
        $total_AUT = DB::select('select count(*) from employees where classcode LIKE "'.$chuoi_dk.'" ');
        foreach($total_AUT as $row){
            foreach($row as $key=>$value){
                $data_2=$value;
            }
        }
        $chuoi_dk = "%BSM%";
        $total_Keuka = DB::select('select count(*) from employees where classcode LIKE "'.$chuoi_dk.'" ');
        foreach($total_Keuka as $row){
            foreach($row as $key=>$value){
                $data_3=$value;
            }
        }
        $total_visit = DB::select('select count(tk1) from employees');
        foreach($total_visit as $row){
            foreach($row as $key=>$value){
                $data_1=$value;
            }
        }
        $data_4 = $data_0 - $data_2 - $data_3;
        $data = [
            "record"=>$data_0,
            "visit"=>$data_1,
            "AUT"=>$data_2, 
            "Keuka"=>$data_3, 
            "ITEC"=>$data_4
        ];
        return view('home',[
            'Total'=>$data
        ]);
    }

    public function userList()
    {
        return view('user.index', [
            'users' => User::all()
        ]);
    }
}
