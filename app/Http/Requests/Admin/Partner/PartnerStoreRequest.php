<?php

namespace App\Http\Requests\Admin\Partner;

use App\Models\Admin\Partner\Partner;
use Illuminate\Foundation\Http\FormRequest;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class PartnerStoreRequest extends FormRequest
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
            'parent_category'=>'required',
            'category'=>'required',
            'partner_name'=>'required',
            'partner_image'=>'mimes:png,jpg,jpeg',
            'partner_join_date'=>'required'
        ];
    }

    public function message(): array
    {
        return [
            //
        ];
    }

    public function store(){
        $support = new Partner();

        $support->parent_category_id = $this->parent_category;
        $support->category_id = $this->category;

        $support->created_by = LoggedAdmin()->id;
        $support->updated_by = LoggedAdmin()->id;

        $support->partner_name = $this->partner_name;
        $support->partner_join_date = $this->partner_join_date;
        $support->partner_link = $this->partner_link;
        $support->partner_contact_number = $this->partner_contact_number;
        $support->partner_email = $this->partner_email;
        $support->partner_address = $this->partner_address;
        $support->short_details = $this->short_details;
        $support->details = $this->details;

        if($this->partner_image){
            $files = $this->partner_image;
            $file = time().'.'.$files->getClientOriginalExtension();

            $partner_image = 'admin/inventory/file/partner/'.$file;
            $manager = new ImageManager(new Driver);
            $manager->read($this->partner_image)->resize(130,1300)->save(env('ASSET_DIRECTORY').'/admin/inventory/file/partner/'.$file);

        }else{
            $partner_image = "";
        }
        $support->partner_image = $partner_image;
    //

        $support->save();

        return true;

    }
}
