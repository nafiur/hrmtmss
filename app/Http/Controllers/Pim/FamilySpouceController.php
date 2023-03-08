<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\FamilySpouce;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class FamilySpouceController extends Controller
{
    public function AllFamilySpouce()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $familyspouce = FamilySpouce::all();
        // $familyspouces = FamilySpouce::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.familyspouce.familyspouce_all', compact('familyspouce'));
    } // End Method

    public function AddFamilySpouce()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        // $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $familyspouce = FamilySpouce::all();
        return view('pim.familyspouce.familyspouce_add', compact('familyspouce','basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreFamilySpouce(Request $request)
    {

        $validateData = $request->validate([
            'spouce_name' => 'required',
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

        FamilySpouce::insert([

            'employee_id' => $request->employee_id,
            'spouce_name' => $request->spouce_name,
            'profession_id' => $request->profession_id,

            'mobile' => $request->mobile,
            'email' => $request->email,

            'spouce_present_village' => $request->spouce_present_village,
            'spouce_present_post' => $request->spouce_present_post,
            'spouce_present_postal_code' => $request->spouce_present_postal_code,

            'spouce_present_division_id' => $request->spouce_present_division_id,
            'spouce_present_district_id' => $request->spouce_present_district_id,
            'spouce_present_upazilla_id' => $request->spouce_present_upazilla_id,

            'spouce_permanent_village' => $request->spouce_permanent_village,
            'spouce_permanent_post' => $request->spouce_permanent_post,
            'spouce_permanent_postal_code' => $request->spouce_permanent_postal_code,

            'spouce_permanent_division_id' => $request->spouce_permanent_division_id,
            'spouce_permanent_district_id' => $request->spouce_permanent_district_id,
            'spouce_permanent_upazilla_id' => $request->spouce_permanent_upazilla_id,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'FamilySpouce In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.familyspouce')->with($notification);

    } // End Method

    public function FamilySpouceShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $familyspouce = FamilySpouce::all();

        // $employee = DB::table('familyspouces')
        // ->join('designations', 'designations.id', '=', 'familyspouces.designation_id')
        // ->get();

        // $familyspouces = FamilySpouce::findOrFail($id);
        $familyspouce = FamilySpouce::findOrFail($id);
        // return View('pim.familyspouce.familyspouce_show',['designations'=>$designation]);
        return view('pim.familyspouce.familyspouce_show', compact('familyspouce', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));
        // return view('pim.familyspouce.familyspouce_show',compact('familyspouce'));

    } // End Method

    public function EditFamilySpouce($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $familyspouce = FamilySpouce::all();

        $familyspouce = FamilySpouce::findOrFail($id);

        return view('pim.familyspouce.familyspouce_edit', compact('familyspouce', 'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));

    } // End Method

    public function UpdateFamilySpouce(Request $request)
    {

        $id = $request->id;

        FamilySpouce::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'spouce_name' => $request->spouce_name,
            'profession_id' => $request->profession_id,

            'mobile' => $request->mobile,
            'email' => $request->email,

            'spouce_present_village' => $request->spouce_present_village,
            'spouce_present_post' => $request->spouce_present_post,
            'spouce_present_postal_code' => $request->spouce_present_postal_code,

            'spouce_present_division_id' => $request->spouce_present_division_id,
            'spouce_present_district_id' => $request->spouce_present_district_id,
            'spouce_present_upazilla_id' => $request->spouce_present_upazilla_id,

            'spouce_permanent_village' => $request->spouce_permanent_village,
            'spouce_permanent_post' => $request->spouce_permanent_post,
            'spouce_permanent_postal_code' => $request->spouce_permanent_postal_code,

            'spouce_permanent_division_id' => $request->spouce_permanent_division_id,
            'spouce_permanent_district_id' => $request->spouce_permanent_district_id,
            'spouce_permanent_upazilla_id' => $request->spouce_permanent_upazilla_id,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'FamilySpouce Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.familyspouce')->with($notification);

    } // End Method

    public function DeleteFamilySpouce($id){

        FamilySpouce::findOrFail($id)->delete();

    $notification = array(
            'message' => 'FamilySpouce Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowFamilySpouce($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        // $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $familyspouce = FamilySpouce::all();

        // $familyspouce = FamilySpouce::findOrFail($id);

        // $employee = DB::table('familyspouces')
        // ->join('designations', 'designations.id', '=', 'familyspouces.designation_id')
        // ->get();

        // $familyspouces = familyspouce::findOrFail($id);
        $familyspouce = FamilySpouce::findOrFail($id);
        // return View('backend.familyspouce.familyspouce_show',['designations'=>$designation]);
        return view('pim.familyspouce.familyspouce_show', compact('familyspouce', 'basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.familyspouce.familyspouce_show',compact('familyspouce'));

    } //
}
