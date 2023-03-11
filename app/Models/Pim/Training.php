<?php

namespace App\Models\Pim;

use App\Models\Pim\BasicInfo;
use App\Models\Setup\Country;
use App\Models\Pim\StaffDetailsReport;
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

    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }
}
