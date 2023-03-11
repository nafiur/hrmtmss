<?php

namespace App\Models\Pim;

use App\Models\Pim\StaffDetailsReport;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class PFCheckList extends Model
{
    use HasFactory;
    public function staffdetailsreport()
    {
        return $this->belongsTo(StaffDetailsReport::class);
    }
}
