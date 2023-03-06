<?php

namespace App\Models\Pim;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nominee extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }

    public function nominee_persent_division(){
        return $this->belongsTo(Division::class,'nominee_persent_division_id','id');
    }

    public function nominee_permanent_district(){
        return $this->belongsTo(District::class,'nominee_permanent_district_id','id');
    }
    public function nominee_permanent_upazilla(){
        return $this->belongsTo(Upazilla::class,'nominee_permanent_upazilla_id','id');
    }

    public function nominee_relation_types(){
        return $this->belongsTo(RelationType::class,'nominee_relation_types_id','id');
    }
}
