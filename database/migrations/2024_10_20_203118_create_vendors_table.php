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
        Schema::create('vendors', function (Blueprint $table) {
            $table->id();
            $table->text('vendor_name')->nullable();
            $table->text('vendor_join_date')->nullable();
            $table->text('vendor_image')->nullable();
            $table->string('vendor_type')->nullable();
            $table->text('vendor_link')->nullable();
            $table->text('vendor_contact_number')->nullable();
            $table->text('vendor_email')->nullable();
            $table->text('vendor_address')->nullable();
            $table->text('short_details')->nullable();
            $table->text('owner_name')->nullable();
            $table->string('owner_email')->nullable();
            $table->text('owner_phone_number')->nullable();
            $table->text('details')->nullable();
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
        Schema::dropIfExists('vendors');
    }
};
