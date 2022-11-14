<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PatientSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        $status = array('Positive', 'Recovered', 'Dead');
        //
        for($i = 1; $i <= 50; $i++) {

            DB::table('patients')->insert([
                'name' => $faker->name,
                'phone' => $faker->phoneNumber,
                'address' => $faker->address,
                'status' => $status[array_rand($status)],
                'in_date_at' => $faker->dateTimeBetween('-1 week', '+1 week'),
                'out_date_at' => $faker->dateTimeBetween('-1 week', '+1 week'),
            ]);
            
        }
    }
}
