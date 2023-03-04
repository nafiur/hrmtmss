<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('education', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('educational_qualification_id')->nullable();
            $table->string('year')->nullable();
            $table->string('educational_subjects_id')->nullable();
            $table->string('group')->nullable();
            $table->string('name_of_institute')->nullable();
            $table->string('thesis_topic')->nullable();
            $table->string('board_university_id')->nullable();
            $table->string('total_marks')->nullable();
            $table->string('grade_class')->nullable();
            $table->string('gpa')->nullable();
            $table->string('documents')->nullable();
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('education');
    }
};
