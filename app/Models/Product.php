<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Product extends Model
{
    protected $guarded = [''];

    public $country = [
        "1" => "Việt Nam",
        "2" => "Anh",
        "3" => "Thuỵ Sỹ",
        "4" => "Mỹ"
    ];

    public function getCountry()
    {
        return Arr::get($this->country, $this->pro_country,"[N\A]");
    }

    public function category()
    {
        return $this->belongsTo(Category::class,'pro_category_id');
    }

    public function keywords()
    {
        return $this->belongsToMany(Keyword::class,'products_keywords','pk_product_id','pk_keyword_id');
    }

    public function attributes()
    {
        return $this->belongsToMany(Attribute::class,'products_attributes','pa_product_id','pa_attribute_id');
    }

    public function favourite()
    {
        return $this->belongsToMany(User::class,'user_favourite','uf_product_id','uf_user_id');
    }
}
