<?php

namespace App\Models;

use App\Models\Domain;
use App\Models\District;
use App\Models\BloodGroup;
use App\Models\Designation;
use Illuminate\Database\Eloquent\Model;
use App\Models\EducationalQualification;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class NewEmployee extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function division(){
        return $this->belongsTo(Division::class,'division_id','id');
    }

    public function birth_place_district(){
        return $this->belongsTo(District::class,'birth_place_district_id','id');
    }
    
    public function designation(){
        return $this->belongsTo(Designation::class,'designation_id','id');
    }
    
    public function domain(){
        return $this->belongsTo(Domain::class,'domain_id','id');
    }
    public function bloodgroup(){
        return $this->belongsTo(BloodGroup::class,'bloodgroup_id','id');
    }
    public function educationqualification(){
        return $this->belongsTo(EducationalQualification::class,'educational_qualification_id','id');
    }
}
