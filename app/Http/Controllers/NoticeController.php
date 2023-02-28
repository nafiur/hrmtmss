<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Notice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    public function NoticeAll(){

        $notices = Notice::all();
        return view('notices.notice_all',compact('notices'));
    } // End Method
    public function NoticeShow(){

        $notices = Notice::all();
        return view('notices.notice_show',compact('notices'));
    } // End Method

    public function NoticeAdd(){
        $notices = Notice::all();
        return view('notices.notice_add',compact('notices'));
    } // End Method

    public function NoticeStore(Request $request){

        $request->validate([
            'form_name'=> 'required',
            'form_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        if ($request->file('form_file')) {
            $file = $request->file('form_file');

            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/notice/'),$filename);
            $data['form_file'] = $filename;
        }

        Notice::insert([
            'form_name' => $request->form_name,
            'form_type' => $request->form_type,
            'form_file' => $filename,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);




        $notification = array(
            'message' => 'Notice Uploded Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('notice.all')->with($notification);

    } // End Method

    public function NoticeEdit($id){

        $notices = Notice::findOrFail($id);
        return view('notices.notice_edit',compact('notices'));

    } // End Method

    public function NoticeUpdate(Request $request){

        $id = $request->id;

        $request->validate([
            'form_name'=> 'required',
            // 'form_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        // if ($request->file('form_file')) {
        //     $file = $request->file('form_file');

        //     $filename = date('YmdHi') . $file->getClientOriginalName();
        //     $file->move(public_path('upload/notices/form/'),$filename);
        //     $data['form_file'] = $filename;
        //  }

        Notice::findOrFail($id)->update([
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

        return redirect()->route('notice.all')->with($notification);

    } // End Method
    public function NoticeDelete($id){

        Notice::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Form Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method
}
