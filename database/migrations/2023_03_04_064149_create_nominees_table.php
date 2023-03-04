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
        Schema::create('nominees', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('nominee_name');
            $table->integer('relation_types_id')->nullable();
            $table->string('percentage')->nullable();
            $table->string('nominee_permanent_village')->nullable();
            $table->string('nominee_permanent_post')->nullable();
            $table->string('nominee_permanent_postal_code')->nullable();
            $table->integer('nominee_permanent_division_id')->nullable();
            $table->integer('nominee_permanent_district_id')->nullable();
            $table->integer('nominee_permanent_upazilla_id')->nullable();
            $table->string('nid')->nullable();
            $table->string('nominee_mobile')->nullable();
            $table->string('nominee_image')->nullable();
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
        Schema::dropIfExists('nominees');
    }
};
