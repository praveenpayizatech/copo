<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use Auth;
use Validator;
use IcoHandler;
use App\Models\KYC;
use App\Models\User;
use App\Models\UserMeta;
use App\Helpers\ReCaptcha;
use App\Notifications\KycStatus;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
class P2P extends Controller
{
    //
}
