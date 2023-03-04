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
        Schema::create('family_children', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('child_name')->nullable();
            $table->string('date_of_birth')->nullable();
            $table->integer('gender_id')->nullable();
            $table->string('child_village')->nullable();
            $table->string('child_post')->nullable();
            $table->string('child_postal_code')->nullable();
            $table->integer('child_division_id')->nullable();
            $table->integer('child_district_id')->nullable();
            $table->integer('child_upazilla_id')->nullable();
            $table->integer('profession_id')->nullable();
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
        Schema::dropIfExists('family_children');
    }
};
