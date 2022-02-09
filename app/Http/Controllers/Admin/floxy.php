<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class floxypay extends Controller
{
    public $key = "flox-b1d6cc8e43440f6a";
    public $secret = "flox-77933a906bf5a7a8d490d2a998ddb44fb22576d63db7299e0669b2569b24a22094cff5c429824d";

 
    public function onboard($name, $number, $email)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.floxypay.com/v1/user/onboard',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_decode('{
                "name":"' . $name . '",
                "email":"' . $email . '",
                "country":"IN",
                "mobile":"' . $number . '"
            }'),
            CURLOPT_HTTPHEADER => array(
                'x-key: ' . $this->key,
                'x-secret: ' . $this->secret
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        return $response;
    }

    public function Payrequest($userid, $amount, $orderid)
    {
        $data1 = '{
                "userid":"' . $userid . '",
                "amount":"' . $amount . '",
                "orderid":"' . $orderid . '"
            }';
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.floxypay.com/v1/payment/process',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_decode($data1),
            CURLOPT_HTTPHEADER => array(
                'x-key: ' . $this->key,
                'x-secret: ' . $this->secret
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        return $response;
    }




    public function orderStatus($orderid)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.floxypay.com/v1/order/status',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_decode('{
                "order_id":"' . $orderid . '"
            }'),
            CURLOPT_HTTPHEADER => array(
                'x-key: ' . $this->key,
                'x-secret: ' . $this->secret
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
        return $response;
    }

    public function request(Request $request)
    {
        return dd($request);
        $amount = $request->input("amount");
        $name = $request->input("name");
        $email = $request->input("email");
        $number = $request->input("number");
        $res = json_decode($this->onboard($name,$number,$email));
        if (!empty($res)) {
            $orderid = uniqid();
            $pay = json_decode($this->Payrequest($res->userid, $amount, $orderid));
            return redirect($pay->url);
        }
    }

    public function gatewayResponse(Request $request)
    {
        return dd($request);
    }
}
