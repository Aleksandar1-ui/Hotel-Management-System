<?php

namespace App\Http\Controllers;

use App\Traits\Api\ApiResponse;
use Illuminate\Routing\Controller as BaseController;

abstract class Controller extends BaseController
{
    use ApiResponse;
}
