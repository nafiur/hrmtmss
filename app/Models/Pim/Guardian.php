<?php

namespace App\Models\Pim;

use App\Models\Setup\Profession;
use App\Models\Setup\RelationType;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Guardian extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function relation_type(){
        return $this->belongsTo(RelationType::class);
    }
    public function profession(){
        return $this->belongsTo(Profession::class);
    }

}
