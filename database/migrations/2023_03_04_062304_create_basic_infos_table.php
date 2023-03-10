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
        Schema::create('basic_infos', function (Blueprint $table) {
            $table->integer('employee_id');
            $table->string('name');
            $table->integer('designation_id')->nullable();
            $table->date('joiningdate')->nullable();
            $table->date('date_of_birth')->nullable();
            $table->integer('domain_id')->nullable();
            $table->string('father_name')->nullable();
            $table->string('mother_name')->nullable();
            $table->integer('marital_status_id')->nullable();
            $table->integer('birth_place_district_id')->nullable();
            $table->string('present_village')->nullable();
            $table->string('present_post')->nullable();
            $table->string('present_postal_code')->nullable();
            $table->integer('present_division_id')->nullable();
            $table->integer('present_district_id')->nullable();
            $table->integer('present_upazilla_id')->nullable();
            $table->string('permanent_village')->nullable();
            $table->string('permanent_post')->nullable();
            $table->string('permanent_postal_code')->nullable();
            $table->integer('permanent_division_id')->nullable();
            $table->integer('permanent_district_id')->nullable();
            $table->integer('permanent_upazilla_id')->nullable();
            $table->string('nid')->nullable();
            $table->string('smartcard')->nullable();
            $table->string('bloodgroups_id')->nullable();
            $table->string('mobile')->nullable();
            $table->string('email')->nullable();
            $table->integer('educational_qualification_id')->nullable();
            $table->string('employee_image')->nullable();
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
        Schema::dropIfExists('basic_infos');
    }
};
