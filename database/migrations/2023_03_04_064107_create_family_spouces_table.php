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
        Schema::create('family_spouces', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('spouce_name');
            $table->string('spouce_present_village')->nullable();
            $table->string('spouce_present_post')->nullable();
            $table->string('spouce_present_postal_code')->nullable();
            $table->integer('spouce_present_division_id')->nullable();
            $table->integer('spouce_present_district_id')->nullable();
            $table->integer('spouce_present_upazilla_id')->nullable();
            $table->string('spouce_permanent_village')->nullable();
            $table->string('spouce_permanent_post')->nullable();
            $table->string('spouce_permanent_postal_code')->nullable();
            $table->integer('spouce_permanent_division_id')->nullable();
            $table->integer('spouce_permanent_district_id')->nullable();
            $table->integer('spouce_permanent_upazilla_id')->nullable();
            $table->string('email')->nullable();
            $table->string('mobile')->nullable();
            $table->integer('profession_id')->nullable();
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
        Schema::dropIfExists('family_spouces');
    }
};
