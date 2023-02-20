<?php

namespace App\Models;

use App\Models\NewEmployee;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Domain extends Model
{
    use HasFactory;
    protected $guarded = [];

    
    public function newemployee(){
        return $this->belongsTo(NewEmployee::class,'employee_id','id');
    }
}
