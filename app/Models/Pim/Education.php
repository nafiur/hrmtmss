<?php

namespace App\Models\Pim;

use App\Models\Setup\Year;
use App\Models\Pim\BasicInfo;
use App\Models\Setup\EducationGroup;
use App\Models\Pim\StaffDetailsReport;
use App\Models\Setup\EducationSubject;
use Illuminate\Database\Eloquent\Model;
use App\Models\EducationalQualification;
use App\Models\Setup\BoardUniversity;
use App\Models\Setup\EducationGradeClass;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Education extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }

    // public function basicinfo(){
    //     return $this->belongsTo(BasicInfo::class,'employee_id','id');
    // }
    public function examname(){
        return $this->belongsTo(EducationalQualification::class,'educational_qualification_id','id');
    }
    public function year(){
        return $this->belongsTo(Year::class,'education_year_id','id');
    }
    public function edusubject(){
        return $this->belongsTo(EducationSubject::class,'educational_subjects_id','id');
    }
    public function educationgroup(){
        return $this->belongsTo(EducationGroup::class,'education_groups_id','id');
    }

    public function boarduniversity(){
        return $this->belongsTo(BoardUniversity::class,'board_university_id','id');
    }
    public function gradeclass(){
        return $this->belongsTo(EducationGradeClass::class,'grade_class','id');
    }

    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }

}
