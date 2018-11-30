<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert(
        		[
					'email'      => 'admin@coindex.vn',
					'password'   => bcrypt('12345'),
					'level'      => 1,
					'status'     => 'on',
					'firstname'  => 'Lê Quang',
					'lastname'   => 'An',
					'role_id'    => 1,
					'created_at' => new \DateTime(),
                    'updated_at' => new \DateTime()
	        	]
        );
    }
}
