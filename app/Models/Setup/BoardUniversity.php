<?php

namespace App\Models\Setup;

use App\Models\Pim\Education;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BoardUniversity extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function boarduniversity(){
        return $this->belongsTo(Education::class,'board_university_id','id');
    }
}
