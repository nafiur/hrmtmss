<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StaffProfileController extends Controller
{
        public function StaffProfileAll(){

            return view('backend.staffprofile.staffprofile_all');
    }// End Method 
}
