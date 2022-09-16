<?php

namespace App\Controller;

class DishesController extends AppController
{
    public function view($slug = null)
    {
        $dish = $this->Dishes->findBySlug($slug)->firstOrFail();
        $this->set(compact('dish'));
    }
}
