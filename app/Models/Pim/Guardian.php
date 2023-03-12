<?php

namespace App\Models\Pim;

use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use App\Models\Pim\StaffDetailsReport;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Guardian extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }
    public function guardian_persent_division(){
        return $this->belongsTo(Division::class,'guardian_persent_division_id','id');
    }

    public function guardian_present_upazilla(){
        return $this->belongsTo(Upazilla::class,'guardian_present_upazilla_id','id');
    }
    public function guardian_present_district(){
        return $this->belongsTo(District::class,'guardian_present_district_id','id');
    }
    public function guardian_permanent_division(){
        return $this->belongsTo(Division::class,'guardian_persent_division_id','id');
    }

    // public function guardian_permanent_upazilla(){
    //     return $this->belongsTo(Upazilla::class,'guardian_permanent_upazilla_id','id');
    // }
    public function guardian_permanent_district(){
        return $this->belongsTo(District::class,'guardian_permanent_district_id','id');
    }
    public function guardian_permanent_upazilla(){
        return $this->belongsTo(Upazilla::class,'guardian_permanent_upazilla_id','id');
    }

    public function relation(){
        return $this->belongsTo(RelationType::class,'guardian_relation_types_id','id');
    }
    public function professions(){
        return $this->belongsTo(Profession::class,'guardian_profession_id','id');
    }
    // public function profession(){
    //     return $this->belongsTo(Profession::class,'profession_id','id');
    // }
    // public function division(){
    //     return $this->belongsTo(Division::class,'division_id','id');
    // }
    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }

}
