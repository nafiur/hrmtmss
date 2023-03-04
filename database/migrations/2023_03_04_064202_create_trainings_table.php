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
        Schema::create('trainings', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('training_name');
            $table->date('date_from')->nullable();
            $table->date('date_to')->nullable();
            $table->string('domestic_overseas')->nullable();
            $table->string('place')->nullable();
            $table->string('country')->nullable();
            $table->string('sponsor')->nullable();
            $table->string('venue')->nullable();
            $table->string('document')->nullable();
            $table->tinyInteger('status')->default('0');
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
        Schema::dropIfExists('trainings');
    }
};
