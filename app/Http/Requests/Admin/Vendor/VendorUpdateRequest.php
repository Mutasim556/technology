<?php

namespace App\Http\Requests\Admin\Vendor;

use App\Models\Admin\Vendor\Vendor;
use Illuminate\Foundation\Http\FormRequest;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class VendorUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'vendor_name'=>'required',
            'vendor_image'=>'mimes:png,jpg,jpeg',
            'vendor_join_date'=>'required',
            'vendor_type'=>'required',
            'vendor_contact_number'=>'required',
            'vendor_email'=>'required',
            'short_details'=>'required',
            'vendor_address'=>'required',
            'owner_name'=>'required',
            'owner_email'=>'required|required',
            'owner_phone_number'=>'required',
        ];
    }

    public function update(string $id){
        $vendor = Vendor::where("id",$id)->first();

        $vendor->vendor_name = $this->vendor_name;
        $vendor->vendor_join_date = $this->vendor_join_date;
        $vendor->vendor_type = $this->vendor_type;
        $vendor->vendor_link = $this->vendor_link;
        $vendor->vendor_contact_number = $this->vendor_contact_number;
        $vendor->vendor_email = $this->vendor_email;
        $vendor->vendor_address = $this->vendor_address;
        $vendor->short_details = $this->short_details;
        $vendor->details = $this->details;
        $vendor->owner_name = $this->owner_name;
        $vendor->owner_email = $this->owner_email;
        $vendor->owner_phone_number = $this->owner_phone_number;
        $vendor->created_by = LoggedAdmin()->id;
        $vendor->updated_by = LoggedAdmin()->id;

        if($this->vendor_image){
            $files = $this->vendor_image;
            $file = time().'.'.$files->getClientOriginalExtension();
            $vendor_image = 'admin/inventory/file/vendor/'.$file;
            $manager = new ImageManager(new Driver);
            $manager->read($this->vendor_image)->resize(120,120)->save(env('ASSET_DIRECTORY').'/admin/inventory/file/vendor/'.$file);

        }else{
            $vendor_image = $vendor->vendor_image;
        }
        $vendor->vendor_image = $vendor_image;

        $vendor->save();
        return true;
    }
}
