<?php

namespace App\Models\Pim;

use App\Models\Pim\BasicInfo;
use App\Models\Pim\StaffDetailsReport;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class YearlyHealthCheckUp extends Model
{
    use HasFactory;
    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }

    public function basicinfo(){
        return $this->belongsTo(BasicInfo::class,'employee_id','id');
    }

}
