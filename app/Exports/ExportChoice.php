<?php

namespace App\Exports;

use App\Models\QuestionChoice;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportChoice implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings(): array
    {
        return [
            'Tên người dùng',
            'Điểm',
            'Thể loại',
            'Thời gian',
        ];
    }
    public function collection()
    {
        return QuestionChoice::join('users', 'users.id', '=', 'question_choice.user_id')->leftjoin('cate_child', 'cate_child.id', '=', 'question_choice.catechild_id')->select('users.fullname', 'point','cate_child.name', 'question_choice.created_at')->get('');
    }
}
