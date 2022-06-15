<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;


class weather extends Model
{   
  use HasFactory;
    use Sortable;



 
    protected $fillable = [
        'name', 'specified_at','location','datetime','latitude',
        'longitude','conditions','description','icon','sunrise',
        'sunset','tempmax','tempmin','dew','humidity','pressure','windspeed','visibility'
      ];

      public $sortable = ['name', 'specified_at','location','datetime','latitude',
      'longitude','conditions','description','sunrise',
      'sunset','tempmax','tempmin','dew','humidity','pressure','windspeed','visibility'];
    
    
}
