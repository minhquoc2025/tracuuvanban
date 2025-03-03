<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportUser implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings(): array
    {
        return [
            'Họ và tên',
            'Email',
            'SDT',
        ];
    }
    public function collection()
    {
        return User::select('fullname', 'email', 'phone')->get('');
    }
}
