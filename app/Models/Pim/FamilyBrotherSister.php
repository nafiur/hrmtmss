<?php

namespace App\Models\Pim;

use App\Models\Pim\BasicInfo;
use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use App\Models\Pim\StaffDetailsReport;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class FamilyBrotherSister extends Model
{
    use HasFactory;
    protected $guarded = [];

    // public function basicinfo(){
    //     return $this->belongsTo(BasicInfo::class,'employee_id','id');
    // }

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }

    public function professions(){
        return $this->belongsTo(Profession::class,'profession_id','id');
    }

    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }

    public function relation(){
        return $this->belongsTo(RelationType::class,'relation_types_id','id');
    }
}
