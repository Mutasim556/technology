<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('solution_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('solution_id')->references('id')->on('solutions');
            $table->text('offer_title')->nullable();
            $table->text('offer_description')->nullable();
            $table->text('success_story')->nullable();
            $table->text('success_description')->nullable();
            $table->text('download_icon')->nullable();
            $table->text('download_title')->nullable();
            $table->text('download_file')->nullable();
            $table->text('security_practices_title')->nullable();
            $table->text('security_practices_description')->nullable();
            $table->text('improved_services_title')->nullable();
            $table->text('improved_services_description')->nullable();
            $table->text('digital_management_title')->nullable();
            $table->text('digital_management_description')->nullable();
            $table->text('overview_title')->nullable();
            $table->text('overview_description')->nullable();
            $table->text('warehouse_title')->nullable();
            $table->text('warehouse_description')->nullable();
            $table->boolean('status')->default(1);
            $table->boolean('delete')->default(0)->comment('0= Not Deleted & 1=Deleted');
            $table->foreignId('created_by')->references('id')->on('admins');
            $table->foreignId('updated_by')->references('id')->on('admins');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('solution_details');
    }
};
