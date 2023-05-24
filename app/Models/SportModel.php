<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SportModel extends Model
{
    use HasFactory;
    protected $table = 'sport';

    protected $appends = [
        'activity_type_name',
    ];

    protected $type = [
        0=>'无',
        1=>'5-a-side',
        2=>'adult football',
        3=>'junior football'
    ];
    public function getActivityTypeNameAttribute()
    {
        if (isset($this->attributes['activity_type'])){
            return $this->type[$this->attributes['activity_type']];
        }else{
            return '';
        }
    }

}
