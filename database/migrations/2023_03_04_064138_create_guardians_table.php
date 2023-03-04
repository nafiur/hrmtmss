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
        Schema::create('guardians', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('guardian_name');
            $table->string('guardian_father_name')->nullable();
            $table->string('guardian_mother_name')->nullable();
            $table->string('relation_types_id')->nullable();
            $table->string('profession_id')->nullable();
            $table->string('monthly_income')->nullable();
            $table->string('guardian_present_village')->nullable();
            $table->string('guardian_present_post')->nullable();
            $table->string('guardian_present_postal_code')->nullable();
            $table->integer('guardian_present_division_id')->nullable();
            $table->integer('guardian_present_district_id')->nullable();
            $table->integer('guardian_present_upazilla_id')->nullable();
            $table->string('guardian_permanent_village')->nullable();
            $table->string('guardian_permanent_post')->nullable();
            $table->string('guardian_permanent_postal_code')->nullable();
            $table->integer('guardian_permanent_division_id')->nullable();
            $table->integer('guardian_permanent_district_id')->nullable();
            $table->integer('guardian_permanent_upazilla_id')->nullable();
            $table->string('guardian_working_address')->nullable();
            $table->string('nid')->nullable();
            $table->string('guardian_mobile')->nullable();
            $table->string('guardian_phone')->nullable();
            $table->string('guardian_fax')->nullable();
            $table->string('guardian_email')->nullable();
            $table->string('guardian_image')->nullable();
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
        Schema::dropIfExists('guardians');
    }
};
