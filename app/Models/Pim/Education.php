<?php

namespace App\Models\Pim;

use Illuminate\Database\Eloquent\Model;
use App\Models\EducationalQualification;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Education extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }
    public function examname(){
        return $this->belongsTo(EducationalQualification::class,'educational_qualification_id','id');
    }

}
