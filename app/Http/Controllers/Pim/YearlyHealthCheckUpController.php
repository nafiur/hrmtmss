<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Country;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Pim\YearlyHealthCheckUp;

class YearlyHealthCheckUpController extends Controller
{
    public function AllYearlyHealthCheckUp()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $country = Country::all();
        $yearlyhealthcheckup = YearlyHealthCheckUp::all();
        // $yearlyhealthcheckups = YearlyHealthCheckUp::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.yearlyhealthcheckup.yearlyhealthcheckup_all', compact('yearlyhealthcheckup'));
    } // End Method

    public function AddYearlyHealthCheckUp()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        // $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $country = Country::all();
        $yearlyhealthcheckup = YearlyHealthCheckUp::all();
        return view('pim.yearlyhealthcheckup.yearlyhealthcheckup_add', compact('yearlyhealthcheckup', 'country','basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreYearlyHealthCheckUp(Request $request)
    {

        $validateData = $request->validate([
            'yearlyhealthcheckup_name' => 'required',
            // 'id' => 'required|unique:basic_infos,id|max:8|min:8',
            // 'employee_type_id' => 'required',
            'employee_id' => 'required',

        ]);

        // if ($request->file('employee_photo')) {
        //     $photo = $request->file('employee_photo');

        //     $photoname = $photo->getClientOriginalName();
        //     $photo->move(public_path('upload/photo/employee/'), $photoname);
        //     $data['employee_photo'] = $photoname;
        // }
        // if ($request->file('employee_photo')) {
        //     $file = $request->file('employee_photo');

        //     $filename = $file->getClientOriginalName();
        //     $file->move(public_path('upload/photo/employee/'), $filename);
        //     $data['employee_photo'] = $filename;
        // }

        YearlyHealthCheckUp::insert([

            'employee_id' => $request->employee_id,
            'yearlyhealthcheckup_name' => $request->yearlyhealthcheckup_name,
            'date_from' => $request->date_from,

            'date_to' => $request->date_to,
            'domestic_overseas' => $request->domestic_overseas,

            'place' => $request->place,
            'country_id' => $request->country_id,
            'sponsor' => $request->sponsor,

            'venue' => $request->venue,
            'documents' => $request->documents,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'YearlyHealthCheckUp In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.yearlyhealthcheckup')->with($notification);

    } // End Method

    public function YearlyHealthCheckUpShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $country = Country::all();
        $basicinfos = BasicInfo::all();
        $yearlyhealthcheckup = YearlyHealthCheckUp::all();

        // $employee = DB::table('yearlyhealthcheckups')
        // ->join('designations', 'designations.id', '=', 'yearlyhealthcheckups.designation_id')
        // ->get();

        // $yearlyhealthcheckups = YearlyHealthCheckUp::findOrFail($id);
        $yearlyhealthcheckup = YearlyHealthCheckUp::findOrFail($id);
        // return View('pim.yearlyhealthcheckup.yearlyhealthcheckup_show',['designations'=>$designation]);
        return view('pim.yearlyhealthcheckup.yearlyhealthcheckup_show', compact('yearlyhealthcheckup', 'country', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));
        // return view('pim.yearlyhealthcheckup.yearlyhealthcheckup_show',compact('yearlyhealthcheckup'));

    } // End Method

    public function EditYearlyHealthCheckUp($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $country = Country::all();
        $basicinfos = BasicInfo::all();
        // $yearlyhealthcheckup = YearlyHealthCheckUp::all();

        $yearlyhealthcheckup = YearlyHealthCheckUp::findOrFail($id);

        return view('pim.yearlyhealthcheckup.yearlyhealthcheckup_edit', compact('yearlyhealthcheckup', 'country', 'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));

    } // End Method

    public function UpdateYearlyHealthCheckUp(Request $request)
    {

        $id = $request->id;

        YearlyHealthCheckUp::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'yearlyhealthcheckup_name' => $request->yearlyhealthcheckup_name,
            'date_from' => $request->date_from,

            'date_to' => $request->date_to,
            'domestic_overseas' => $request->domestic_overseas,

            'place' => $request->place,
            'country_id' => $request->country_id,
            'sponsor' => $request->sponsor,

            'venue' => $request->venue,
            'documents' => $request->documents,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'YearlyHealthCheckUp Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.yearlyhealthcheckup')->with($notification);

    } // End Method

    public function DeleteYearlyHealthCheckUp($id){

        YearlyHealthCheckUp::findOrFail($id)->delete();

    $notification = array(
            'message' => 'YearlyHealthCheckUp Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowYearlyHealthCheckUp($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        // $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $country = Country::all();
        $basicinfos = BasicInfo::all();
        // $yearlyhealthcheckup = YearlyHealthCheckUp::all();

        // $yearlyhealthcheckup = YearlyHealthCheckUp::findOrFail($id);

        // $employee = DB::table('yearlyhealthcheckups')
        // ->join('designations', 'designations.id', '=', 'yearlyhealthcheckups.designation_id')
        // ->get();

        // $yearlyhealthcheckups = yearlyhealthcheckup::findOrFail($id);
        $yearlyhealthcheckup = YearlyHealthCheckUp::findOrFail($id);
        // return View('backend.yearlyhealthcheckup.yearlyhealthcheckup_show',['designations'=>$designation]);
        return view('pim.yearlyhealthcheckup.yearlyhealthcheckup_show', compact('yearlyhealthcheckup', 'country', 'basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.yearlyhealthcheckup.yearlyhealthcheckup_show',compact('yearlyhealthcheckup'));

    } //
}
