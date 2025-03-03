<?php

namespace App\Exports;

use App\Models\Question;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportQuestion implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $catechild_id;
    function __construct($catechild_id) {
        $this->catechild_id = $catechild_id;
    }
    public function headings(): array
    {
        return [
            'Tên câu hỏi',
            'Câu trả lời 1',
            'Câu trả lời 2',
            'Câu trả lời 3',
            'Câu trả lời 4',
            'Câu trả lời đúng',
        ];
    }
    public function collection()
    {
        return Question::where('catechild_id', $this->catechild_id)->select('name', 'answer1', 'answer2', 'answer3', 'answer4', 'answertrue')->get('');
    }
}
