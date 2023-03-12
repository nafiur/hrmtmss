<?php

namespace App\Http\Controllers\Pim;

use App\Models\Pim\Guardian;
use App\Models\Pim\Training;
use Illuminate\Http\Request;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\Education;
use App\Models\Pim\Experience;
use App\Models\Pim\FamilyChild;
use App\Models\Pim\FamilySpouce;
use App\Http\Controllers\Controller;
use App\Models\Pim\FamilyBrotherSister;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $query = $request->input('search_query');

        $basic_infos = BasicInfo::where('id', 'LIKE', '%'.$query.'%')->get();
        $guardians = Guardian::where('employee_id', 'LIKE', '%'.$query.'%')->get();
        $educations = Education::where('employee_id', 'LIKE', '%'.$query.'%')->get();
        $trainings = Training::where('employee_id', 'LIKE', '%'.$query.'%')->get();
        $experiences = Experience::where('employee_id', 'LIKE', '%'.$query.'%')->get();
        $family_brother_sisters = FamilyBrotherSister::where('employee_id', 'LIKE', '%'.$query.'%')->get();
        $family_children = FamilyChild::where('employee_id', 'LIKE', '%'.$query.'%')->get();
        $family_spouces = FamilySpouce::where('employee_id', 'LIKE', '%'.$query.'%')->get();

        return view('pim.report.search', compact('basic_infos', 'guardians', 'educations', 'trainings', 'experiences', 'family_brother_sisters', 'family_children', 'family_spouces'));
    }
}
