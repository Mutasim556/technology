<?php

namespace App\Http\Requests\Admin\Solution;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

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
            'what_we_offer_title'=>[Rule::requiredIf(function(){return in_array($this->solution_tags,['What_We_Offer']);})],
            'what_we_offer_description'=>[Rule::requiredIf(function(){return in_array($this->solution_tags,['What_We_Offer']);})],
            'success_stories_title'=>[Rule::requiredIf(function(){return in_array($this->solution_tags,['Success_Stories']);})],
            'success_stories_description'=>[Rule::requiredIf(function(){return in_array($this->solution_tags,['Success_Stories']);})],
        ];
    }

    public function messages()
    {
        return[
            'what_we_offer_title.required_if' => __('admin_local.Title field is required'),
            'what_we_offer_description.required_if' => __('admin_local.Description field is required'),
        ];
    }

    public function store(){

    }
}
