<?php

namespace App\Http\Controllers\Pim;

use Carbon\Carbon;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\Pim\Training;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Setup\Country;
use Illuminate\Support\Facades\Auth;

class TrainingController extends Controller
{
    public function AllTraining()
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
        $training = Training::all();
        // $trainings = Training::where('created_by', $user->id)->orderBy('id', 'DESC')->get();
        return view('pim.training.training_all', compact('training'));
    } // End Method

    public function AddTraining()
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
        $training = Training::all();
        return view('pim.training.training_add', compact('training', 'country','basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
    } // End Method

    public function StoreTraining(Request $request)
    {

        $validateData = $request->validate([
            'training_name' => 'required',
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

        Training::insert([

            'employee_id' => $request->employee_id,
            'training_name' => $request->training_name,
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
            'message' => 'Training In Saved Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.training')->with($notification);

    } // End Method

    public function TrainingShow($id)
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
        $training = Training::all();

        // $employee = DB::table('trainings')
        // ->join('designations', 'designations.id', '=', 'trainings.designation_id')
        // ->get();

        // $trainings = Training::findOrFail($id);
        $training = Training::findOrFail($id);
        // return View('pim.training.training_show',['designations'=>$designation]);
        return view('pim.training.training_show', compact('training', 'country', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));
        // return view('pim.training.training_show',compact('training'));

    } // End Method

    public function EditTraining($id)
    {

        $user = Auth::user();
        $basicinfo = BasicInfo::all();
        $professions = Profession::all();
        $districts = District::all();
        $divisions = Division::all();
        $upazillas = Upazilla::all();
        $country = Country::all();
        $basicinfos = BasicInfo::all();
        // $training = Training::all();

        $training = Training::findOrFail($id);

        return view('pim.training.training_edit', compact('training', 'country', 'professions', 'basicinfos', 'districts', 'divisions', 'basicinfos', 'upazillas'));

    } // End Method

    public function UpdateTraining(Request $request)
    {

        $id = $request->id;

        Training::findOrFail($id)->update([

            'employee_id' => $request->employee_id,
            'training_name' => $request->training_name,
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
            'message' => 'Training Info Updated Successfully',
            'alert-type' => 'success',
        );

        return redirect()->route('all.training')->with($notification);

    } // End Method

    public function DeleteTraining($id){

        Training::findOrFail($id)->delete();

    $notification = array(
            'message' => 'Training Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method

    public function ShowTraining($id)
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
        // $training = Training::all();

        // $training = Training::findOrFail($id);

        // $employee = DB::table('trainings')
        // ->join('designations', 'designations.id', '=', 'trainings.designation_id')
        // ->get();

        // $trainings = training::findOrFail($id);
        $training = Training::findOrFail($id);
        // return View('backend.training.training_show',['designations'=>$designation]);
        return view('pim.training.training_show', compact('training', 'country', 'basicinfos', 'professions', 'districts', 'divisions', 'upazillas'));
        // return view('backend.training.training_show',compact('training'));

    } //
}
