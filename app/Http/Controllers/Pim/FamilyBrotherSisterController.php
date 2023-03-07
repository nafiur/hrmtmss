<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\Pim\FamilyBrotherSister;

class FamilyBrotherSisterController extends Controller
{
    public function AllFamilyBrotherSister()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $profession = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $fbs = FamilyBrotherSister::all();
        // $fbss = FamilyBrotherSister::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.familybrothersister.familybrothersister_all', compact('fbs'));
    } // End Method

    public function AddFamilyBrotherSister()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $fbs = FamilyBrotherSister::all();
        return view('pim.familybrothersister.familybrothersister_add', compact('fbs','basicinfos', 'relation_types', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreFamilyBrotherSister(Request $request)
    {

        $validateData = $request->validate([
            'brother_sister_name' => 'required',
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

        FamilyBrotherSister::insert([

            'employee_id' => $request->employee_id,
            'brother_sister_name' => $request->brother_sister_name,
            'relation_types' => $request->relation_types,
            'profession_id' => $request->profession_id,
            'depend' => $request->depend,
            'brother_sister_village' => $request->brother_sister_village,
            'brother_sister_post' => $request->brother_sister_post,
            'brother_sister_postal_code' => $request->brother_sister_postal_code,

            'brother_sister_division_id' => $request->brother_sister_division_id,
            'brother_sister_district_id' => $request->brother_sister_district_id,
            'brother_sister_upazilla_id' => $request->brother_sister_upazilla_id,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'FamilyBrotherSister In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.familybrothersister')->with($notification);

    } // End Method

    public function FamilyBrotherSisterShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professionype = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $fbs = FamilyBrotherSister::all();

        // $employee = DB::table('familybrothersisters')
        // ->join('designations', 'designations.id', '=', 'familybrothersisters.designation_id')
        // ->get();

        // $fbss = FamilyBrotherSister::findOrFail($id);
        $fbs = FamilyBrotherSister::findOrFail($id);
        // return View('pim.familybrothersister.familybrothersister_show',['designations'=>$designation]);
        return view('pim.familybrothersister.familybrothersister_show', compact('fbs', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation_types', 'upazillas'));
        // return view('pim.familybrothersister.familybrothersister_show',compact('fbs'));

    } // End Method

    public function EditFamilyBrotherSister($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $fbs = FamilyBrotherSister::all();

        $fbs = FamilyBrotherSister::findOrFail($id);

        return view('pim.familybrothersister.familybrothersister_edit', compact('fbs', 'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation_types', 'upazillas'));

    } // End Method

    public function UpdateFamilyBrotherSister(Request $request)
    {

        $id = $request->id;

        FamilyBrotherSister::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'brother_sister_name' => $request->brother_sister_name,
            'relation_types' => $request->relation_types,
            'profession_id' => $request->profession_id,
            'depend' => $request->depend,
            'brother_sister_village' => $request->brother_sister_village,
            'brother_sister_post' => $request->brother_sister_post,
            'brother_sister_postal_code' => $request->brother_sister_postal_code,

            'brother_sister_division_id' => $request->brother_sister_division_id,
            'brother_sister_district_id' => $request->brother_sister_district_id,
            'brother_sister_upazilla_id' => $request->brother_sister_upazilla_id,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'FamilyBrotherSister Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.familybrothersister')->with($notification);

    } // End Method

    public function DeleteFamilyBrotherSister($id){

        FamilyBrotherSister::findOrFail($id)->delete();

    $notification = array(
            'message' => 'FamilyBrotherSister Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowFamilyBrotherSister($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $fbs = FamilyBrotherSister::all();

        // $fbs = FamilyBrotherSister::findOrFail($id);

        // $employee = DB::table('familybrothersisters')
        // ->join('designations', 'designations.id', '=', 'familybrothersisters.designation_id')
        // ->get();

        // $fbss = familybrothersister::findOrFail($id);
        $fbs = FamilyBrotherSister::findOrFail($id);
        // return View('backend.familybrothersister.familybrothersister_show',['designations'=>$designation]);
        return view('pim.familybrothersister.familybrothersister_show', compact('fbs', 'basicinfos', 'relation_types', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.familybrothersister.familybrothersister_show',compact('fbs'));

    } //
}
