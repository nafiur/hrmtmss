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
use App\Models\Pim\RelativeStaff;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class RelativeStaffController extends Controller
{
    public function AllRelativeStaff()
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
        $relativestaff = RelativeStaff::all();
        // $relativestaffs = RelativeStaff::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.relativestaff.relativestaff_all', compact('relativestaff'));
    } // End Method

    public function AddRelativeStaff()
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
        $relativestaff = RelativeStaff::all();
        return view('pim.relativestaff.relativestaff_add', compact('relativestaff', 'country','basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreRelativeStaff(Request $request)
    {

        $validateData = $request->validate([
            'relativestaff_name' => 'required',
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

        RelativeStaff::insert([

            'employee_id' => $request->employee_id,
            'relativestaff_name' => $request->relativestaff_name,
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
            'message' => 'RelativeStaff In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.relativestaff')->with($notification);

    } // End Method

    public function RelativeStaffShow($id)
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
        $relativestaff = RelativeStaff::all();

        // $employee = DB::table('relativestaffs')
        // ->join('designations', 'designations.id', '=', 'relativestaffs.designation_id')
        // ->get();

        // $relativestaffs = RelativeStaff::findOrFail($id);
        $relativestaff = RelativeStaff::findOrFail($id);
        // return View('pim.relativestaff.relativestaff_show',['designations'=>$designation]);
        return view('pim.relativestaff.relativestaff_show', compact('relativestaff', 'country', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));
        // return view('pim.relativestaff.relativestaff_show',compact('relativestaff'));

    } // End Method

    public function EditRelativeStaff($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $country = Country::all();
        $basicinfos = BasicInfo::all();
        // $relativestaff = RelativeStaff::all();

        $relativestaff = RelativeStaff::findOrFail($id);

        return view('pim.relativestaff.relativestaff_edit', compact('relativestaff', 'country', 'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));

    } // End Method

    public function UpdateRelativeStaff(Request $request)
    {

        $id = $request->id;

        RelativeStaff::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'relativestaff_name' => $request->relativestaff_name,
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
            'message' => 'RelativeStaff Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.relativestaff')->with($notification);

    } // End Method

    public function DeleteRelativeStaff($id){

        RelativeStaff::findOrFail($id)->delete();

    $notification = array(
            'message' => 'RelativeStaff Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowRelativeStaff($id)
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
        // $relativestaff = RelativeStaff::all();

        // $relativestaff = RelativeStaff::findOrFail($id);

        // $employee = DB::table('relativestaffs')
        // ->join('designations', 'designations.id', '=', 'relativestaffs.designation_id')
        // ->get();

        // $relativestaffs = relativestaff::findOrFail($id);
        $relativestaff = RelativeStaff::findOrFail($id);
        // return View('backend.relativestaff.relativestaff_show',['designations'=>$designation]);
        return view('pim.relativestaff.relativestaff_show', compact('relativestaff', 'country', 'basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.relativestaff.relativestaff_show',compact('relativestaff'));

    } //
}
