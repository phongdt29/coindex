<?php

namespace App\Http\Requests\Contact;

use Illuminate\Foundation\Http\FormRequest;

class AddNewsPosition extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'emailgtv' => 'required|email',
        
        ];
    }

    public function messages()
    {
        return [
            'emailgtv.required' => 'Vui lòng nhập Email',
            'emailgtv.email' => 'Vui Lòng Nhập Đúng Định Dạng mail'
           
        ];
    }
}
