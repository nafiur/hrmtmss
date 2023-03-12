<?php

namespace App\Models\Pim;

use App\Models\Domain;
use App\Models\Gender;
use App\Models\District;
use App\Models\Division;
use App\Models\Upazilla;
use App\Models\BloodGroup;
use App\Models\Designation;
use App\Models\EmployeeType;
use App\Models\Pim\Guardian;
use App\Models\MaritalStatus;
use App\Models\Pim\StaffDetailsReport;
use Illuminate\Database\Eloquent\Model;
use App\Models\EducationalQualification;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class BasicInfo extends Model
{
    use HasFactory;
    protected $guarded = [];


    public function division(){
        return $this->belongsTo(Division::class,'division_id','id');
    }

    public function birth_place_district(){
        return $this->belongsTo(District::class,'birth_place_district_id','id');
    }

    public function present_upazilla(){
        return $this->belongsTo(Upazilla::class,'present_upazilla_id','id');
    }
    public function present_district(){
        return $this->belongsTo(District::class,'present_district_id','id');
    }
    public function permanent_upazilla(){
        return $this->belongsTo(Upazilla::class,'permanent_upazilla_id','id');
    }
    public function permanent_district(){
        return $this->belongsTo(District::class,'permanent_district_id','id');
    }
    // public function nominee_district(){
    //     return $this->belongsTo(District::class,'nominee_permanent_upazilla_id','id');
    // }
    // public function nominee_upazilla(){
    //     return $this->belongsTo(Upazilla::class,'nominee_permanent_district_id','id');
    // }

    public function designation(){
        return $this->belongsTo(Designation::class,'designation_id','id');
    }

    public function domain(){
        return $this->belongsTo(Domain::class,'domain_id','id');
    }
    public function blood_groups(){
        return $this->belongsTo(BloodGroup::class,'blood_groups_id','id');
    }
    public function gender(){
        return $this->belongsTo(Gender::class,'gender_id','id');
    }
    public function marital_status(){
        return $this->belongsTo(MaritalStatus::class,'marital_status_id','id');
    }
    public function educational_qualification(){
        return $this->belongsTo(EducationalQualification::class,'educational_qualification_id','id');
    }
    public function employee_type(){
        return $this->belongsTo(EmployeeType::class,'employee_type_id','id');
    }

    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }

    public function education()
    {
        return $this->hasMany(Education::class);
    }

    public function guardian()
    {
        return $this->hasMany(Guardian::class);
    }

    public function nominee()
    {
        return $this->hasMany(Nominee::class);
    }

    public function familychild()
    {
        return $this->hasMany(FamilyChild::class);
    }

    public function familybrothersister()
    {
        return $this->hasMany(FamilyBrotherSister::class);
    }
    public function familyspouce()
    {
        return $this->hasMany(FamilySpouce::class);
    }

    public function training()
    {
        return $this->hasMany(Training::class);
    }
    // public function trainings()
    // {
    //     return $this->hasMany(Training::class);
    // }
    public function experience()
    {
        return $this->hasMany(Experience::class);
    }

}


