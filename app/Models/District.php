<?php

namespace App\Models;

use App\Models\Division;
use App\Models\NewEmployee;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class District extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function division(){
        return $this->belongsTo(Division::class,'division_id','id');
    }
    public function newemployee(){
        return $this->belongsTo(NewEmployee::class,'employee_id','id');
    }
}
