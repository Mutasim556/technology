<?php

namespace App\Http\Requests\Admin\Support;

use App\Models\Admin\Support\Support;
use Illuminate\Foundation\Http\FormRequest;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class SupportStoreRequest extends FormRequest
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
            'title'=>'required',
            'icon'=>'mimes:png,jpg,jpeg'
        ];
    }

    public function message(): array
    {
        return [
            //
        ];
    }

    public function store(){
        $support = new Support();
        
        $support->parent_category_id = $this->parent_category;
        $support->category_id = $this->category;

        $support->created_by = LoggedAdmin()->id;
        $support->updated_by = LoggedAdmin()->id;

        $support->title = $this->title;
        $support->short_description = $this->short_description;
        $support->description = $this->description;
        $support->release_note = $this->release_note;
        $support->file_link = $this->file_link;
        $support->release_link = $this->release_link;
        $support->link = $this->link;
        
        if($this->icon){
            $files = $this->icon;
            $file = time().'.'.$files->getClientOriginalExtension();
            
            $icon = 'admin/inventory/file/support/'.$file;
            $manager = new ImageManager(new Driver);
            // dd($file);
            $manager->read($this->icon)->resize(50,50)->save(env('ASSET_DIRECTORY').'/admin/inventory/file/support/'.$file);

        }else{
            $icon = "";
        }
        $support->icon = $icon;
    //    dd($support);
        if($this->file){
                $file = $this->file;
                $file_size = number_format($this->file('file')->getSize()/1048576,2);
                $fileName = "DIGITAL_PRODUCT_FILE_".time().'.'.$file->getClientOriginalExtension();
                $file->move(env('ASSET_DIRECTORY').'/admin/inventory/file/support/file/',$fileName);
                $file_name = env('ASSET_DIRECTORY').'/admin/inventory/file/support/file/'.$fileName;
        }else{
            $file_name = '';
            $file_size = '';
        }

        $support->file = $file_name;
        $support->file_size = $file_size;
        $support->file_link = $this->file_link;

        if($this->release_file){
            $file = $this->release_file;
            $fileName = "DIGITAL_PRODUCT_FILE_".time().'.'.$file->getClientOriginalExtension();
            $file->move(env('ASSET_DIRECTORY').'/admin/inventory/file/support/release_file/',$fileName);
            $file_name = env('ASSET_DIRECTORY').'/admin/inventory/file/support/release_file/'.$fileName;
        }else{
            $file_name = '';
        }

        $support->release_file = $file_name;

        $support->release_link = $this->release_file_link;
        $support->link = $this->solution_link;
        $support->release_note = $this->release_note;
        $support->short_description = $this->short_description;
        $support->description = $this->description;

        $support->save();

        return true;
        
    }
}
