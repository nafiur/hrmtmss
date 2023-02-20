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

    public function DownloadsAdd(){
        $downloads = Downloads::all();
        return view('downloads.download_add',compact('downloads'));
    } // End Method 

    public function DownloadsStore(Request $request){

        Downloads::insert([
            'id' => $request->id,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'New Form Added Successfully', 
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

        Downloads::findOrFail($id)->update([
            'name' => $request->name,
            'father_name' => $request->father_name,
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
