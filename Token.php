<?php

class  Token
{

    public static function generate($user_id, $time)
    {


        $header = [
            'typ' => 'jwt',
            'alg' => 'HS256'
        ];

        $header = json_encode($header);
        $header = base64_encode($header);


        $payload = [
            'user_id' => $user_id,
            'create-at' => $time
        ];

        $payload = json_encode($payload);
        $payload = base64_encode($payload);

        $signature = hash_hmac('sha256', '$header.$payload', 'this is');
        $signature = base64_encode($signature);

        $token = '$header.$payload.$signature';
        return $token;


    }

    public static function verify($token)
    {

        $ar = explode('.', $token);
        if (sizeof($ar) == 3) {

            $signature = $ar[2];
            $checked_code = hash_hmac('sha256', '$ar[0].$ar[1]', 'this is');
            $checked_code = base64_encode($checked_code);

            if ($signature == $checked_code) {
                $decode_data = json_decode(base64_decode($ar[1]));
                $time = $decode_data->create_at;
                $time = $time + (10 * 24 * 60 * 60);
                if ($time > time()) {
                    return $decode_data;
                } else {
                    return false;
                }

                return json_decode(base64_decode($ar[1]));

            } else {
                return false;
            }

        } else {
            return false;
        }


    }


}



