<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Country;
use App\Models\Pim\PFCheckList;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class PFCheckListController extends Controller
{
    public function AllPFCheckList()
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
        $pfchecklist = PFCheckList::all();
        // $pfchecklists = PFCheckList::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.pfchecklist.pfchecklist_all', compact('pfchecklist'));
    } // End Method

    public function AddPFCheckList()
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
        $pfchecklist = PFCheckList::all();
        return view('pim.pfchecklist.pfchecklist_add', compact('pfchecklist', 'country','basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StorePFCheckList(Request $request)
    {

        $validateData = $request->validate([
            'pfchecklist_name' => 'required',
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

        PFCheckList::insert([

            'employee_id' => $request->employee_id,
            'pfchecklist_name' => $request->pfchecklist_name,
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
            'message' => 'PFCheckList In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.pfchecklist')->with($notification);

    } // End Method

    public function PFCheckListShow($id)
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
        $pfchecklist = PFCheckList::all();

        // $employee = DB::table('pfchecklists')
        // ->join('designations', 'designations.id', '=', 'pfchecklists.designation_id')
        // ->get();

        // $pfchecklists = PFCheckList::findOrFail($id);
        $pfchecklist = PFCheckList::findOrFail($id);
        // return View('pim.pfchecklist.pfchecklist_show',['designations'=>$designation]);
        return view('pim.pfchecklist.pfchecklist_show', compact('pfchecklist', 'country', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));
        // return view('pim.pfchecklist.pfchecklist_show',compact('pfchecklist'));

    } // End Method

    public function EditPFCheckList($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $country = Country::all();
        $basicinfos = BasicInfo::all();
        // $pfchecklist = PFCheckList::all();

        $pfchecklist = PFCheckList::findOrFail($id);

        return view('pim.pfchecklist.pfchecklist_edit', compact('pfchecklist', 'country', 'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));

    } // End Method

    public function UpdatePFCheckList(Request $request)
    {

        $id = $request->id;

        PFCheckList::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'pfchecklist_name' => $request->pfchecklist_name,
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
            'message' => 'PFCheckList Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.pfchecklist')->with($notification);

    } // End Method

    public function DeletePFCheckList($id){

        PFCheckList::findOrFail($id)->delete();

    $notification = array(
            'message' => 'PFCheckList Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowPFCheckList($id)
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
        // $pfchecklist = PFCheckList::all();

        // $pfchecklist = PFCheckList::findOrFail($id);

        // $employee = DB::table('pfchecklists')
        // ->join('designations', 'designations.id', '=', 'pfchecklists.designation_id')
        // ->get();

        // $pfchecklists = pfchecklist::findOrFail($id);
        $pfchecklist = PFCheckList::findOrFail($id);
        // return View('backend.pfchecklist.pfchecklist_show',['designations'=>$designation]);
        return view('pim.pfchecklist.pfchecklist_show', compact('pfchecklist', 'country', 'basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.pfchecklist.pfchecklist_show',compact('pfchecklist'));

    } //
}
