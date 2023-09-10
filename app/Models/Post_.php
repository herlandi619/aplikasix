<?php

namespace App\Models;


class Post 
{
   private static $blog_posts =  [
        [
            "title" => "Judul Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Renold Herlandi",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eligendi consequatur quidem ab excepturi architecto dolorum nulla magnam. Ipsam doloribus praesentium ratione rem rerum minus facilis veritatis? Beatae voluptatum enim at soluta ut voluptas doloremque aut sunt, sint placeat a veniam rerum eos reiciendis nostrum totam. Voluptatum quibusdam dolorem et natus!"
        ],
        [
            "title" => "Judul Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Vava Alamysha",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eligendi consequatur quidem ab excepturi architecto dolorum nulla magnam. Ipsam doloribus praesentium ratione rem rerum minus facilis veritatis? Beatae voluptatum enim at soluta ut voluptas doloremque aut sunt, sint placeat a veniam rerum eos reiciendis nostrum totam. Voluptatum quibusdam dolorem et natus!"
        ],
        [
            "title" => "Judul Ketiga",
            "slug" => "judul-post-ketiga",
            "author" => "ahmad mukliss",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eligendi consequatur quidem ab excepturi architecto dolorum nulla magnam. Ipsam doloribus praesentium ratione rem rerum minus facilis veritatis? Beatae voluptatum enim at soluta ut voluptas doloremque aut sunt, sint placeat a veniam rerum eos reiciendis nostrum totam. Voluptatum quibusdam dolorem et natus!"
        ]
        
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug' , $slug);
    }
}
