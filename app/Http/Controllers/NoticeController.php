<?php

namespace App\Http\Controllers;

use App\Models\Notice;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    public function NoticeAll()
    {

        $notices = Notice::all();
        return view('notices.notice_all', compact('notices'));
    } // End Method

    public function NoticeLatest()
    {

        $latestnotice = Notice::orderBy ('id','desc')->get();
        return view('admin.index', compact('latestnotice'));
    } // End Method


    public function NoticeShow()
    {

        $notices = Notice::all();
        return view('notices.notice_show', compact('notices'));
    } // End Method

    public function NoticeAdd()
    {
        $notices = Notice::all();
        return view('notices.notice_add', compact('notices'));
    } // End Method

    public function NoticeStore(Request $request)
    {

        $request->validate([
            'notice_title' => 'required',
            'notice_file' => 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        if ($request->file('notice_file')) {
            $file = $request->file('notice_file');

            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/notice/'), $filename);
            $data['notice_file'] = $filename;
        }

        Notice::insert([
            'notice_title' => $request->notice_title,
            'notice_description' => $request->notice_description,
            'notice_file' => $filename,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Notice Uploded Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('notice.all')->with($notification);

    } // End Method

    public function NoticeEdit($id)
    {

        $notices = Notice::findOrFail($id);
        return view('notices.notice_edit', compact('notices'));

    } // End Method

    public function NoticeUpdate(Request $request)
    {

        $id = $request->id;

        $request->validate([
            'notice_title' => 'required',
            // 'form_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        // if ($request->file('form_file')) {
        //     $file = $request->file('form_file');

        //     $filename = date('YmdHi') . $file->getClientOriginalName();
        //     $file->move(public_path('upload/notices/form/'),$filename);
        //     $data['form_file'] = $filename;
        //  }

        Notice::findOrFail($id)->update([
            'notice_title' => $request->notice_title,
            'notice_description' => $request->notice_description,
            // 'notice_file' => $filename,
            // 'form_file' => $filename,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Notice Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('notice.all')->with($notification);

    } // End Method
    public function NoticeDelete($id)
    {

        Notice::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Notice Deleted Successfully',
            'alert-type' => 'success',
        );

        return redirect()->back()->with($notification);

    } // End Method
}
