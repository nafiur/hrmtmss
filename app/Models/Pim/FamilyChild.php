<?php

namespace App\Models\Pim;

use App\Models\Gender;
use App\Models\Pim\BasicInfo;
use App\Models\Pim\StaffDetailsReport;
use App\Models\Setup\Profession;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class FamilyChild extends Model
{
    use HasFactory;
    protected $guarded = [];

    // public function basicinfo(){
    //     return $this->belongsTo(BasicInfo::class,'employee_id','id');
    // }

    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }

    public function gender()
    {
        return $this->belongsTo(Gender::class,'gender_id','id');
    }

    public function professions(){
        return $this->belongsTo(Profession::class,'profession_id','id');
    }
}
