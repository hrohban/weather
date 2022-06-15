<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWeatherTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('weather', function (Blueprint $table) {
            $table->bigIncrements('id')->unsigned();
            //$table->unsignedBigInteger('user_id');
            $table->string('name')->nullable();
            $table->timestamp('specified_at')->nullable();
            $table->float('latitude')->nullable();
            $table->float('longitude')->nullable();
            $table->string('location')->nullable();
            $table->string('datetime')->nullable();
            $table->string('conditions')->nullable();
            $table->string('description')->nullable();
            $table->string('icon')->nullable();
            $table->string('sunrise')->nullable();
            $table->string('sunset')->nullable();
            $table->float('tempmax')->nullable();
            $table->float('tempmin')->nullable();
            $table->float('dew')->nullable();
            $table->float('humidity')->nullable();
            $table->float('pressure')->nullable();
            $table->float('windspeed')->nullable();
            $table->float('visibility')->nullable();
            $table->timestamps();
            
            //$table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('weather');
    }
}
