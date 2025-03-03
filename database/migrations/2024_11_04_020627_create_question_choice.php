<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('question_choice', function (Blueprint $table) {
            $table->id();
            $table->string('point');
            $table->string('count_anser');
            $table->unsignedInteger('user_id');
            $table->unsignedInteger('doccate_id')->nullable();
            $table->unsignedInteger('catechild_id');
            $table->unsignedInteger('cate_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('question_choice');
    }
};
