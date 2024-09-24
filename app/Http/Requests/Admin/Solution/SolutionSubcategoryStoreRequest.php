<?php

namespace App\Http\Requests\Admin\Solution;

use App\Models\Admin\Solution\SolutionSubCategory;
use Illuminate\Foundation\Http\FormRequest;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class SolutionSubcategoryStoreRequest extends FormRequest
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
           'sub_category_name' => 'required',
           'sub_category_image' => 'mimes:png,jpg,jpeg|max:2000',
        ];
    }


    public function store(){
        if($this->sub_category_image){
            $files = $this->sub_category_image;
            $file = $this->sub_category_name.time().'.'.$files->getClientOriginalExtension();
            $file_name = 'admin/inventory/file/solution/sub-category/'.$file;
            $manager = new ImageManager(new Driver);
            $manager->read($this->sub_category_image)->resize(50,50)->save('admin/inventory/file/solution/sub-category/'.$file);
        }else{
            $file_name = "";
        }

        $sub_category = new SolutionSubCategory();
        $sub_category->parent_category_id = $this->parent_category;
        $sub_category->category_id = $this->category;
        $sub_category->sub_category_name = $this->sub_category_name;
        $sub_category->sub_category_image = $file_name;
        $sub_category->sub_category_added_by = LoggedAdmin()->id;
        $sub_category->sub_category_status = 1;
        $sub_category->save();

        return $sub_category->id;
    }
}
