<?php

namespace App\Http\Controllers;
use App\Models\Product;

class ProdukController extends Controller{
    function index(){
        $data['list_produk'] = Product::all();
        return view('Produk.index', $data);
    }
    function create(){
        return view('Produk.create');
    }
    function store(){
        $Product = new Product;
        $Product->nama = request('nama');
        $Product->harga = request('harga');
        $Product->berat = request('berat');
        $Product->deskripsi = request('deskripsi');
        $Product->stock = request('stock');
        $Product->save();

        return redirect('admin/Produk')->with('success', 'Data Berhasil Ditambahkan');
    }
    function show(Product $Produk){
        $data['Produk'] = $Produk;
        return view('Produk/show', $data);
    }
    function edit(Product $Produk){
        $data['Produk'] = $Produk;
        return view('Produk.edit', $data);
    }
    function update(Product $Produk){
        $Produk->nama = request('nama');
        $Produk->harga = request('harga');
        $Produk->berat = request('berat');
        $Produk->deskripsi = request('deskripsi');
        $Produk->stock = request('stock');
        $Produk->save();

        return redirect('admin/Produk')->with('success', 'Data Berhasil Diedit');
    }
    function destroy(Product $Produk){
        $Produk->delete();

        return redirect('admin/Produk')->with('danger', 'Data Berhasil Dihapus');

    }
}