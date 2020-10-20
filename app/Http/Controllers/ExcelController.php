<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Imports\UserImport;
use App\Exports\UsersExport;
use App\Exports\EmployeesExport;

use App\User;
use Illuminate\Support\Facades\Validator;
use Excel;

class ExcelController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function getImport(){
        return view('excel.import');
    }

    public function postImport(Request $request){
        $validator = Validator::make($request->all(),[
            'file' => 'required|max:5000|mimes:xlsx,xls,cvs'
        ]);
        if ($validator->passes()){
            
            $dataTime = date('Ymd_His');
            $file = $request->file('file');
            $fileName = $dataTime .'-'. $file->getClientOriginalName();
            $savePath = public_path('/upload/');
            $file->move($savePath, $fileName);
            
            Excel::import(new UserImport, $savePath.$fileName);

            return redirect()->back()
            ->with(['success'=>'File uploaded successfully.']);

        }else{
            return redirect()->back()
            ->with(['errors'=>$validator->errors()->all()]);
        }
        
    }

    public function exportUser()
    {
        return Excel::download(new UsersExport, 'students.xlsx');
    }

    public function exportEmployee()
    {
        return Excel::download(new EmployeesExport, 'employees.xlsx');
    }

}
