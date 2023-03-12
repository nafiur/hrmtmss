<?php

namespace App\Models\Pim;

use App\Models\District;
use App\Models\Upazilla;
use App\Models\Setup\RelationType;
use App\Models\Pim\StaffDetailsReport;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Nominee extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class);
    }

    // public function basicinfo(){
    //     return $this->belongsTo(BasicInfo::class,'employee_id','id');
    // }

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
    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }
    public function nominee_district(){
        return $this->belongsTo(District::class,'nominee_permanent_district_id','id');
    }
    public function nominee_upazilla(){
        return $this->belongsTo(Upazilla::class,'nominee_permanent_upazilla_id','id');
    }
}
