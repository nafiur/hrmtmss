<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Reports;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReportsController extends Controller
{
    public function ReportAll(){

        $reports = Reports::all();
        return view('reports.report_all',compact('reports'));
    } // End Method
    public function ReportShow(){

        $reports = Reports::all();
        return view('reports.report_show',compact('reports'));
    } // End Method

    public function ReportAdd(){
        $reports = Reports::all();
        return view('reports.report_add',compact('reports'));
    } // End Method

    public function ReportStore(Request $request){

        $request->validate([
            'report_name'=> 'required',
            'report_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        if ($request->file('report_file')) {
            $file = $request->file('report_file');

            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/reports/report/'),$filename);
            $data['report_file'] = $filename;
        }

        Reports::insert([
            'report_name' => $request->report_name,
            'report_type' => $request->report_type,
            'report_file' => $filename,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);




        $notification = array(
            'message' => 'Report Uploded Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('report.all')->with($notification);

    } // End Method

    public function ReportEdit($id){

        $reports = Reports::findOrFail($id);
        return view('reports.report_edit',compact('reports'));

    } // End Method

    public function ReportUpdate(Request $request){

        $id = $request->id;

        $request->validate([
            'report_name'=> 'required',
            // 'report_file'=> 'required|mimes:png,jpg,pdf,xls,xlsx,ppt,pptx,doc,docx',

        ]);

        // if ($request->file('report_file')) {
        //     $file = $request->file('report_file');

        //     $filename = date('YmdHi') . $file->getClientOriginalName();
        //     $file->move(public_path('upload/reports/report/'),$filename);
        //     $data['report_file'] = $filename;
        //  }

        Reports::findOrFail($id)->update([
            'report_name' => $request->report_name,
            'report_type' => $request->report_type,
            // 'report_file' => $filename,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Report Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('report.all')->with($notification);

    } // End Method
    public function ReportDelete($id){

        Reports::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Report Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method
}
