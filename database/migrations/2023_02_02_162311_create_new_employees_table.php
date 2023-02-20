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
        Schema::create('new_employees', function (Blueprint $table) {
            // $table->id('employee_id');
            $table->string('id');
            $table->string('name');
            $table->string('designation_id')->nullable();
            $table->date('joiningdate')->nullable();
            $table->date('date_of_birth')->nullable();
            $table->string('domain_id')->nullable();
            $table->string('father_name')->nullable();
            $table->string('mother_name')->nullable();
            $table->string('marital_status_id')->nullable();
            $table->string('birth_place_district_id')->nullable();
            $table->string('present_village')->nullable();
            $table->string('present_post')->nullable();
            $table->string('present_postal_code')->nullable();
            $table->string('present_division_id')->nullable();
            $table->string('present_district_id')->nullable();
            $table->string('present_upazilla_id')->nullable();
            $table->string('permanent_village')->nullable();
            $table->string('permanent_post')->nullable();
            $table->string('permanent_postal_code')->nullable();
            $table->string('permanent_division_id')->nullable();
            $table->string('permanent_district_id')->nullable();
            $table->string('permanent_upazilla_id')->nullable();
            $table->string('nid')->nullable();
            $table->string('smartcard')->nullable();
            $table->string('bloodgroups_id')->nullable();
            $table->string('mobile')->nullable();
            $table->string('email')->nullable();
            $table->string('educational_qualification_id')->nullable();
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
        Schema::dropIfExists('new_employees');
    }
};
