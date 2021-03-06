<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use App\Enums\UserRole;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('users')->insert([
            [
                'id'   => 10,
                'name' => "Super管理者",
                'email'=> "admin@gmail.com",
                'email_verified_at' => now(),
                'password'=>\Hash::make('qweqweqwe'),
                'created_at'     => Carbon::now()->subWeek(1),
                'updated_at'     => Carbon::now()->subWeek(1),
            ]
        ]);
    }
}
