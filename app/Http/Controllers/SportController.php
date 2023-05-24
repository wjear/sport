<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\SportModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class SportController extends Controller
{

    /**
     * Method:数据统计
     * @return \Illuminate\Http\JsonResponse
     * Author:WangJing
     * Date:2023/5/24 12:11
     */
    public function data()
    {
        $list = SportModel::groupBy('date', 'sport')
            ->select(
                'id',
                'sport',
                'date as activity_date',
                DB::raw("sum(headcount)  as num")
            )
            ->get();

        return $this->successReturn(['list' => $list]);
    }

    /**
     * Method:下拉列表
     * @return \Illuminate\Http\JsonResponse
     * Author:WangJing
     * Date:2023/5/24 14:13
     */
    public function list(Request $request)
    {
        $date = $request->get('date');
        $sport = $request->get('sport')??'football';
        $list = SportModel::where('date', $date)
            ->where('sport', $sport)
            ->select(
                'sport',
                'activity_type',
                'headcount',
                'date'
            )
            ->get();
        return $this->successReturn($list);
    }
}
