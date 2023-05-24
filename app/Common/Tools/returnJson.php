<?php
namespace App\Common\Tools;

trait returnJson
{
    //错误提示
    protected function errorReturn( $data = "" ,$error_code=500,$msg = 'error'){

        return response()->json([
            'error_code'=>$error_code,
            'data'=>(object)[],
            'msg'=>$msg,
            'error_msg' => empty($data['error']) ? $data:$data['error']  ,
            'server' => env('APP_ENV_SLB'),
        ]);
    }

    protected function successReturn($data = [],$message="success",$error_code=0,$msg = 'success'){
        return response()->json([
            'error_code'=>$error_code,
            'data'=>$data,
            'msg'=>$msg,
            'error_msg' => $message
        ]);
    }


}
