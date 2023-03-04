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
        Schema::create('family_brother_sisters', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('brother_sister_name');
            $table->integer('relation_types__id');
            $table->integer('profession_id');
            $table->string('depend')->nullable();
            $table->string('brother_sister_village')->nullable();
            $table->string('brother_sister_post')->nullable();
            $table->string('brother_sister_postal_code')->nullable();
            $table->integer('brother_sister_division_id')->nullable();
            $table->integer('brother_sister_district_id')->nullable();
            $table->integer('brother_sister_upazilla_id')->nullable();
            $table->string('email')->nullable();
            $table->string('mobile')->nullable();
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
        Schema::dropIfExists('family_brother_sisters');
    }
};
