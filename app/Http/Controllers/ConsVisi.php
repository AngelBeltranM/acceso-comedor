<?php

namespace App\Http\Controllers;

use App\Models\Visitantes;
use Illuminate\Http\Request;

class ConsVisi extends Controller
{
    public function index(){
        $Visi = Visitantes::all();

        return view('crud.ConsVisitantes',compact('Visi'));
    }
}
