<?php

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dateTime = date('Y-m-d H:i:s');

        DB::table('users')->insert([
            'name' => 'test',
            'email' => 'test@example.com',
            'email_verified_at' => $dateTime,
            'password' => bcrypt('test'),
            'created_at' => $dateTime,
            'updated_at' => $dateTime,
        ]);
    }
}
