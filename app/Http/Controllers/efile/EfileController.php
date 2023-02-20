<?php

namespace App\Http\Controllers\efile;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EfileController extends Controller
{
    public function EfileAll(){

        return view('efile.admin.index');
    } // End Method 
}
