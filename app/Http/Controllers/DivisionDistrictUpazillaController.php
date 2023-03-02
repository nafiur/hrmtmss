<?php

namespace App\Http\Controllers;

use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use Illuminate\Http\Request;

class DivisionDistrictUpazillaController extends Controller
{
    // public function index()
    // {
    //     $divisions = Division::get(['name','id']);

    //     return view('dropdown',compact('divisions'));
    // }

    // public function fetchDistrict(Request $request)
    // {
    //     $data['districts'] = District::where('division_id',$request->division_id)->get(['name','id']);

    //     return response()->json($data);
    // }

    // public function fetchUpazilla(Request $request)
    // {
    //     $data['upazillas'] = Upazilla::where('district_id',$request->district_id)->get(['name','id']);

    //     return response()->json($data);
    // }
    public function index()
    {
        $data['divisions'] = Division::get(["name", "id"]);
        return view('division-district-upazilla', $data);
    }
    public function getDistrict(Request $request)
    {
        $data['districts'] = District::where("division_id", $request->division_id)
            ->get(["name", "id"]);
        return response()->json($data);
    }
    public function getUpazilla(Request $request)
    {
        $data['upazillas'] = Upazilla::where("district_id", $request->district_id)
            ->get(["name", "id"]);
        return response()->json($data);
    }
}
