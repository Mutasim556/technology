<?php

namespace App\Http\Requests\Admin\Settings;

use App\Models\Admin\Settings\Logo;
use Illuminate\Foundation\Http\FormRequest;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class LogoStoreRequest extends FormRequest
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
            'logo_alt_text'=>'required',
            'logo'=>'required|mimes:png,jpg,jpeg,svg',
        ];
    }


    public function store(){
        $logo  = new Logo();

        $logo->logo_link = $this->logo_link;
        $logo->logo_alt_text = $this->logo_alt_text;
        $logo->logo_type = $this->logo_type;
        $logo->created_by = LoggedAdmin()->id;
        $logo->updated_by = LoggedAdmin()->id;
        if($this->logo){
            $files = $this->logo;
            $file = time().'.'.$files->getClientOriginalExtension();
            $file_name = 'admin/inventory/file/settings/logo/'.$file;
            $manager = new ImageManager(new Driver);
            $manager->read($this->logo)->save(env('ASSET_DIRECTORY').'/'.'admin/inventory/file/settings/logo/'.$file);
        }else{
            $file_name = "";
        }

        $logo->logo = $file_name;

        $logo->save();
        return $logo;
    }
}
