<?php

namespace App\Http\Requests\Admin\Solution;

use App\Models\Admin\Solution\Solution;
use App\Models\Admin\Solution\SolutionDetail;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;

class SolutionStoreRequest extends FormRequest
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
            'sub_category'=>'required',
            'what_we_offer_title'=>[Rule::requiredIf(function(){return in_array('What_We_Offer',$this->solution_tags);})],
            'what_we_offer_description'=>[Rule::requiredIf(function(){return in_array('What_We_Offer',$this->solution_tags);})],
            'success_stories_title'=>[Rule::requiredIf(function(){return in_array('Success_Stories',$this->solution_tags);})],
            'success_stories_description'=>[Rule::requiredIf(function(){return in_array('Success_Stories',$this->solution_tags);})],
            'downloads_icon.*'=>[Rule::requiredIf(function(){return in_array('Downloads',$this->solution_tags);})],
            'downloads_title.*'=>[Rule::requiredIf(function(){return in_array('Downloads',$this->solution_tags);})],
            'downloads_file.*'=>[Rule::requiredIf(function(){return in_array('Downloads',$this->solution_tags);})],
            'security_practices_title'=>[Rule::requiredIf(function(){return in_array('Security_Practices',$this->solution_tags);})],
            'security_practices_description'=>[Rule::requiredIf(function(){return in_array('Security_Practices',$this->solution_tags);})],
            'digital_management_title'=>[Rule::requiredIf(function(){return in_array('Digital_Management',$this->solution_tags);})],
            'digital_management_description'=>[Rule::requiredIf(function(){return in_array('Digital_Management',$this->solution_tags);})],
            'improved_services_title'=>[Rule::requiredIf(function(){return in_array('Improved_Services',$this->solution_tags);})],
            'improved_services_description'=>[Rule::requiredIf(function(){return in_array('Improved_Services',$this->solution_tags);})],
            'overview_title'=>[Rule::requiredIf(function(){return in_array('Overview',$this->solution_tags);})],
            'overview_description'=>[Rule::requiredIf(function(){return in_array('Overview',$this->solution_tags);})],
            'warehouses_title'=>[Rule::requiredIf(function(){return in_array('Warehouses',$this->solution_tags);})],
            'warehouses_description'=>[Rule::requiredIf(function(){return in_array('Warehouses',$this->solution_tags);})],
        ];
    }

    public function messages()
    {
        return[
            'what_we_offer_title.required' => __('Title field is required'),
            'what_we_offer_description.required' => __('Description field is required'),
            'success_stories_title.required' => __('Title field is required'),
            'success_stories_description.required' => __('Description field is required'),
            'what_we_offer_title.required' => __('Title field is required'),
            'what_we_offer_description.required' => __('Description field is required'),
            'downloads_icon.*.required' => __('Icon field is required'),
            'downloads_title.*.required' => __('Title field is required'),
            'downloads_file.*.required' => __('File field is required'),
            'security_practices_title.required' => __('Title field is required'),
            'security_practices_description.required' => __('Description field is required'),
            'digital_management_title.required' => __('Title field is required'),
            'digital_management_description.required' => __('Description field is required'),
            'improved_services_title.required' => __('Title field is required'),
            'improved_services_description.required' => __('Description field is required'),
            'overview_title.required' => __('Title field is required'),
            'overview_description.required' => __('Description field is required'),
            'warehouses_title.required' => __('Title field is required'),
            'warehouses_description.required' => __('Description field is required'),
        ];
    }

    public function store(){
        $solution = new Solution();
        $solution->parent_category_id = $this->parent_category;
        $solution->category_id = $this->category;
        $solution->sub_category_id = $this->sub_category;
        $solution->created_by = LoggedAdmin()->id;
        $solution->updated_by = LoggedAdmin()->id;
        $solution->save();

        $solution_details = new SolutionDetail();
        $solution_details->solution_id = $solution->id;
        $solution_details->solution_tags = implode(',',$this->solution_tags);
        $solution_details->offer_title = $this->what_we_offer_title;
        $solution_details->offer_description = $this->what_we_offer_description;
        $solution_details->success_story = $this->success_stories_title;
        $solution_details->success_description = $this->success_stories_description;
        

        if (count($this->downloads_icon)>0) {
            $images = $this->downloads_icon;
            $image_names = [];
          
            foreach ($images as $key => $image) {
                $imageName = $image->getClientOriginalName();
                $manager = new ImageManager(new Driver());
                $manager->read($image)->resize(60, 60)->save(env('ASSET_DIRECTORY').'/admin/inventory/file/solution/' . $imageName);
                $imageName  = env('ASSET_DIRECTORY').'/admin/inventory/file/solution/' . $imageName;
                $image_names[] = $imageName;
            }
            $downloads_icon = implode(",", $image_names);
        } else {
            $downloads_icon = null;
        }
        $solution_details->download_icon = $downloads_icon;
        $solution_details->download_title = implode('|',$this->downloads_title);

        if (count($this->downloads_file)>0) {
            $images = $this->downloads_file;
            $image_names = [];
          
            foreach ($images as $key => $image) {
                $file = $image;
                $fileName = "DIGITAL_PRODUCT_FILE_".time().'.'.$file->getClientOriginalExtension();
                $image->move(env('ASSET_DIRECTORY').'/admin/inventory/file/solution/file/',$fileName);
                $name = env('ASSET_DIRECTORY').'/admin/inventory/file/solution/file/'.$fileName;
                $image_names[] = $name;
            }
            $downloads_file = implode(",", $image_names);
        } else {
            $downloads_file = null;
        }
        $solution_details->download_file = $downloads_file;
        $solution_details->security_practices_title = $this->security_practices_title;
        $solution_details->security_practices_description = $this->security_practices_description;
        $solution_details->improved_services_title = $this->improved_services_title;
        $solution_details->improved_services_description = $this->improved_services_description;
        $solution_details->digital_management_title = $this->digital_management_title;
        $solution_details->digital_management_description = $this->digital_management_description;
        $solution_details->overview_title = $this->overview_title;
        $solution_details->overview_description = $this->overview_description;
        $solution_details->warehouse_title = $this->warehouses_title;
        $solution_details->warehouse_description = $this->warehouses_description;
        $solution_details->created_by = LoggedAdmin()->id;
        $solution_details->updated_by = LoggedAdmin()->id;
        
        $solution_details->save();

        return true;
    }
}
