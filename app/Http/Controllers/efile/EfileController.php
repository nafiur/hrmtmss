<?php

namespace App\Http\Controllers\efile;

use App\Http\Controllers\Controller;

class EfileController extends Controller
{
    public function EfileAll()
    {

        return view('efile.admin.index');
    } // End Method
}
