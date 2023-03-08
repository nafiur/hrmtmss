<?php

namespace App\Models\Pim;

use App\Models\Setup\Country;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Training extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }
    public function country(){
        return $this->belongsTo(Country::class,'country_id','id');
    }

}
