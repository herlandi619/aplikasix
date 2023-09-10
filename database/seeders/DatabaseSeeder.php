<?php

namespace Database\Seeders;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       

        
        // User::create([
        //     'name' => 'Vava Alamsyah',
        //     'email' => 'vavaya@gmail.com',
        //     'password' => bcrypt('herland002')
        // ]);
        // User::create([
        //     'name' => 'Ahmad Muklis',
        //     'email' => 'muklis@gmail.com',
        //     'password' => bcrypt('herland002')
        // ]);

        User::create([
            'name' => 'Renold Herlandi',
            'username' => 'renoldherlandi',
            'email' => 'herlandi619@gmail.com',
            'password' => bcrypt('herland002')
        ]);

        User::factory(10)->create();

        Category::create([
            'title' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'title' => 'Web Desain',
            'slug' => 'web-desain'
        ]);
        Category::create([
            'title' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(25)->create(); 

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae similique error nisi laboriosam rem tenetur! Enim amet aspernatur itaque quibusdam.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, sequi. Fugit voluptate, praesentium rerum modi minus eos molestias doloribus eveniet expedita esse dicta, consequuntur saepe?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea, numquam ullam unde maiores consequatur voluptatem. Voluptate aliquam ipsa assumenda nulla velit. Odio, voluptas ipsam! Corrupti odit ipsum eligendi quaerat commodi!</p>',
        //     'user_id' => 1 , 
        //     'category_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae similique error nisi.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, sequi. Fugit voluptate, praesentium rerum modi minus eos molestias doloribus eveniet expedita esse dicta, consequuntur saepe?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea, numquam ullam unde maiores consequatur voluptatem. Voluptate aliquam ipsa assumenda nulla velit. Odio, voluptas ipsam! Corrupti odit ipsum eligendi quaerat commodi!</p>',
        //     'user_id' => 2 , 
        //     'category_id' => 2
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae similique error nisi.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, sequi. Fugit voluptate, praesentium rerum modi minus eos molestias doloribus eveniet expedita esse dicta, consequuntur saepe?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea, numquam ullam unde maiores consequatur voluptatem. Voluptate aliquam ipsa assumenda nulla velit. Odio, voluptas ipsam! Corrupti odit ipsum eligendi quaerat commodi!</p>',
        //     'user_id' => 3 , 
        //     'category_id' => 3
        // ]);
        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae similique error nisi.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, sequi. Fugit voluptate, praesentium rerum modi minus eos molestias doloribus eveniet expedita esse dicta, consequuntur saepe?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea, numquam ullam unde maiores consequatur voluptatem. Voluptate aliquam ipsa assumenda nulla velit. Odio, voluptas ipsam! Corrupti odit ipsum eligendi quaerat commodi!</p>',
        //     'user_id' => 1 , 
        //     'category_id' => 1
        // ]);


    }
}

