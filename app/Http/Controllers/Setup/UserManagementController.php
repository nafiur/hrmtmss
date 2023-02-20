<?php

namespace App\Http\Controllers\Setup;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function UserAll(){
        $users = User::all();
        return view('backend.user.user_all',compact('users'));
    } // End Method 


    public function UserAdd(){
        return view('backend.user.user_add');
    } // End Method 


       public function UserStore(Request $request){

        User::insert([
            'name' => $request->name,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'User Inserted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('user.all')->with($notification);

    } // End Method 

    public function UserEdit($id){

        $user = User::findOrFail($id);
        return view('backend.user.user_edit',compact('user'));

    } // End Method 

    public function UserUpdate(Request $request){

        $user_id = $request->id;

        User::findOrFail($user_id)->update([
            'name' => $request->name,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'User Updated Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('user.all')->with($notification);

    } // End Method 


    public function UserDelete($id){

        User::findOrFail($id)->delete();
      
       $notification = array(
            'message' => 'User Deleted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method 
}
