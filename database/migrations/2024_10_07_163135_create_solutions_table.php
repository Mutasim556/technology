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
        Schema::create('solutions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('parent_category_id')->references('id')->on('solution_parent_categories');
            $table->foreignId('category_id')->references('id')->on('solution_categories');
            $table->foreignId('sub_category_id')->references('id')->on('solution_sub_categories');
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
        Schema::dropIfExists('solutions');
    }
};
