<?php

namespace App\Http\Controllers;

use App\Models\Downloads;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class DownloadsController extends Controller
{
    public function DownloadsAll(){

        $downloads = Downloads::all();
        return view('downloads.download_all',compact('downloads'));
    } // End Method 
    public function DownloadsShow(){

        $downloads = Downloads::all();
        return view('downloads.download_show',compact('downloads'));
    } // End Method 

    public function DownloadsAdd(){
        $downloads = Downloads::all();
        return view('downloads.download_add',compact('downloads'));
    } // End Method 

    public function DownloadsStore(Request $request){

        $request->validate([
            'form_name'=> 'required',
            'form_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        if ($request->file('form_file')) {
            $file = $request->file('form_file');

            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/downloads/form/'),$filename);
            $data['form_file'] = $filename;
        }

        Downloads::insert([
            'form_name' => $request->form_name,
            'form_type' => $request->form_type,
            'form_file' => $filename,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 
            
        ]);

    
        

        $notification = array(
            'message' => 'File Uploded Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('download.all')->with($notification);

    } // End Method 

    public function DownloadsEdit($id){

        $downloads = Downloads::findOrFail($id);
        return view('downloads.download_edit',compact('downloads'));

    } // End Method 

    public function DownloadsUpdate(Request $request){

        $id = $request->id;

        $request->validate([
            'form_name'=> 'required',
            // 'form_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        // if ($request->file('form_file')) {
        //     $file = $request->file('form_file');

        //     $filename = date('YmdHi') . $file->getClientOriginalName();
        //     $file->move(public_path('upload/downloads/form/'),$filename);
        //     $data['form_file'] = $filename;
        //  }

        Downloads::findOrFail($id)->update([
            'form_name' => $request->form_name,
            'form_type' => $request->form_type,
            // 'form_file' => $filename,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(), 

        ]);

        $notification = array(
            'message' => 'NewEmployee Updated Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('download.all')->with($notification);

    } // End Method 
    public function DownloadsDelete($id){

        Downloads::findOrFail($id)->delete();
    
    $notification = array(
            'message' => 'Form Deleted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method 
}
