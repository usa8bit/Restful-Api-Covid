<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    protected $table = 'patients';
    protected $fillable = ['name', 'phone', 'address', 'status', 'in_date_at', 'out_date_at'];
    // protected $operators = array(
    //     '=', '<', '>', '<=', '>=', '<>', '!=',
    //     'like', 'not like', 'between', 'ilike',
    //     '&', '|', '^', '<<', '>>',
    //     'rlike', 'regexp', 'not regexp',
    // );
    use HasFactory;
}
