<?php

namespace App\Http\Controllers;

class HomeController extends Controller{


    function showdashboard(){
        return view('BackView.dashboard');
    }

    function showkategori(){
        return view('BackView.kategori');
    }

    function showsupplier(){
        return view('BackView.supplier');
    }

    function showcolegan(){
        return view('BackView.colegan');
    }

    function showproduct2(){
        return view('BackView.product2');
    }

}