<?php

namespace App\Imports;

use App\Models\Question;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportQuestion implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    protected $catechild_id;
    protected $cate_id;
    function __construct($catechild_id, $cate_id) {
        $this->catechild_id = $catechild_id;
        $this->cate_id = $cate_id;
    }
    public function model(array $row)
    {
        return new Question([
            'name' => $row[0],
            'answer1' => $row[1],
            'answer2' => $row[2],
            'answer3' => $row[3],
            'answer4' => $row[4],
            'answertrue' => $row[5],
            'catechild_id' => $this->catechild_id,
            'cate_id' => $this->cate_id,
        ]);
    }
}
