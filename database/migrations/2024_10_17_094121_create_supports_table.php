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
        Schema::create('supports', function (Blueprint $table) {
            $table->id();
            $table->foreignId('parent_category_id')->references('id')->on('solution_parent_categories');
            $table->foreignId('category_id')->references('id')->on('solution_categories');
            $table->text('title')->nullable();
            $table->text('short_description')->nullable();
            $table->text('description')->nullable();
            $table->text('release_note')->nullable();
            $table->text('icon')->nullable();
            $table->text('file')->nullable();
            $table->text('file_link')->nullable();
            $table->text('release_file')->nullable();
            $table->text('release_link')->nullable();
            $table->text('link')->nullable();
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
        Schema::dropIfExists('supports');
    }
};
