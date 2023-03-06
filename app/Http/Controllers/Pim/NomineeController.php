<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\Pim\Nominee;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class NomineeController extends Controller
{
    public function AllNominee()
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $nominee = Nominee::all();
        // $nominees = Nominee::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.nominee.nominee_all', compact('nominee'));
    } // End Method

    public function AddNominee()
    {
        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $nominee = Nominee::all();
        return view('pim.nominee.nominee_add', compact('nominee','basicinfos', 'relation_types', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreNominee(Request $request)
    {

        $validateData = $request->validate([
            'nominee_name' => 'required',
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

        Nominee::insert([
            'employee_id' => $request->employee_id,
            'nominee_name' => $request->nominee_name,

            'nominee_relation_types_id' => $request->nominee_relation_types_id,
            'nominee_percentage' => $request->nominee_percentage,

            'nominee_permanent_village' => $request->nominee_permanent_village,
            'nominee_permanent_post' => $request->nominee_permanent_post,
            'nominee_permanent_postal_code' => $request->nominee_permanent_postal_code,
            'nominee_permanent_division_id' => $request->nominee_permanent_division_id,
            'nominee_permanent_district_id' => $request->nominee_permanent_district_id,
            'nominee_permanent_upazilla_id' => $request->nominee_permanent_upazilla_id,

            'nominee_mobile' => $request->nominee_mobile,
            'nominee_nid' => $request->nominee_nid,

            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(),

        ]);

        $notification = array(
            'message' => 'Nominee In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.nominee')->with($notification);

    } // End Method

    public function NomineeShow($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        $nominee = Nominee::all();

        // $employee = DB::table('nominees')
        // ->join('designations', 'designations.id', '=', 'nominees.designation_id')
        // ->get();

        // $nominees = Nominee::findOrFail($id);
        $nominee = Nominee::findOrFail($id);
        // return View('pim.nominee.nominee_show',['designations'=>$designation]);
        return view('pim.nominee.nominee_show', compact('nominee', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation_types', 'upazillas'));
        // return view('pim.nominee.nominee_show',compact('nominee'));

    } // End Method

    public function EditNominee($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $nominee = Nominee::all();

        $nominee = Nominee::findOrFail($id);

        return view('pim.nominee.nominee_edit', compact('nominee', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'relation_types', 'upazillas'));

    } // End Method

    public function UpdateNominee(Request $request)
    {

        $id = $request->id;

        Nominee::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'nominee_name' => $request->nominee_name,

            'nominee_relation_types_id' => $request->nominee_relation_types_id,
            'nominee_percentage' => $request->nominee_percentage,

            'nominee_permanent_village' => $request->nominee_permanent_village,
            'nominee_permanent_post' => $request->nominee_permanent_post,
            'nominee_permanent_postal_code' => $request->nominee_permanent_postal_code,
            'nominee_permanent_division_id' => $request->nominee_permanent_division_id,
            'nominee_permanent_district_id' => $request->nominee_permanent_district_id,
            'nominee_permanent_upazilla_id' => $request->nominee_permanent_upazilla_id,

            'nominee_mobile' => $request->nominee_mobile,
            'nominee_nid' => $request->nominee_nid,

            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Nominee Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.nominee')->with($notification);

    } // End Method

    public function DeleteNominee($id){

        Nominee::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Nominee Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowNominee($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $relation_types = RelationType::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $basicinfos = BasicInfo::all();
        // $nominee = Nominee::all();

        // $nominee = Nominee::findOrFail($id);

        // $employee = DB::table('nominees')
        // ->join('designations', 'designations.id', '=', 'nominees.designation_id')
        // ->get();

        // $nominees = nominee::findOrFail($id);
        $nominee = Nominee::findOrFail($id);
        // return View('backend.nominee.nominee_show',['designations'=>$designation]);
        return view('pim.nominee.nominee_show', compact('nominee', 'basicinfos', 'relation_types', 'districts', 'divisions', 'upazillas'));
        // return view('backend.nominee.nominee_show',compact('nominee'));

    } //
}
