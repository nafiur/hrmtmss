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
        Schema::create('experiences', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id');
            $table->string('organization_name')->nullable();
            $table->string('job_nature')->nullable();
            $table->string('post')->nullable();
            $table->date('experience_from')->nullable();
            $table->date('experience_to')->nullable();
            $table->string('total_experience')->nullable();
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
        Schema::dropIfExists('experiences');
    }
};
