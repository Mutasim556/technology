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
        Schema::create('support_categories', function (Blueprint $table) {
            $table->id();
            $table->foreignId('parent_category_id')->nullable()->references('id')->on('support_parent_categories');
            $table->string('category_name');
            $table->string('category_image')->nullable();
            $table->boolean('category_status')->default(1);
            $table->boolean('category_delete')->default(0)->comment('0=Not Deleted 1=Deleted');
            $table->foreignId('category_added_by')->references('id')->on('admins');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('support_categories');
    }
};
