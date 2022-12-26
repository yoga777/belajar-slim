<?php

namespace App\Controller;

use App\Model\barangModel;

class DataController
{

    public static function delete($app, $req, $rsp, $args)
    {
        $id = $args['data'];


        $del = $app->db->delete('tbl_barang', [
            "id_barang" => $id
        ]);

        // return $rsp->withJson($del);
        $json_data = array(
            "draw"            => intval($req->getParam('draw')),
        );

        echo json_encode($json_data);
    }
    public static function ubah_modal($app, $req, $rsp, $args)
    {
        $id = $args['data'];

        $select = $app->db->select('tbl_barang', [
            "[><]tbl_kategori" => ["id_kategori" => "id_kategori"]
        ], [
            'id_barang',
            'nama_barang',
            'merk',
            'harga_jual',
            'stok',
        ], [
            "tbl_barang.id_barang" => $id
        ]);
        // return var_dump($select);
        return $rsp->withJson($select);
        // return $rsp->withJson($data);

    }


    public static function tampil_data($app, $req, $rsp, $args)
    {

        $data = $app->db->select('tbl_barang', [
            "[><]tbl_kategori" => ["id_kategori" => "id_kategori"]
        ], [
            'id_barang',
            'nama_barang',
            'merk',
            'harga_jual',
            'stok',
            'nama_kategori',
        ]);




        $columns = array(
            0 => 'id',
        );

        $totaldata = count($data);
        $totalfiltered = $totaldata;
        $limit = $req->getParam('length');
        $start = $req->getParam('start');
        $order = $req->getParam('order');
        $order = $columns[$order[0]['column']];
        $dir = $req->getParam('order');
        $dir = $dir[0]['dir'];

        $req->getParam('kategori');

        $conditions = [
            "LIMIT" => [$start, $limit]
        ];

        if (!empty($req->getParam('search')['value'])) {
            $search = $req->getParam('search')['value'];
            $conditions['OR'] = [
                'tbl_barang.nama_barang[~]' => '%' . $search . '%',
                'tbl_kategori.nama_kategori[~]' => '%' . $search . '%',
                'tbl_barang.merk[~]' => '%' . $search . '%',
            ];
        }

        $barang = $app->db->select('tbl_barang', [
            "[><]tbl_kategori" => ["id_kategori" => "id_kategori"]
        ], [
            'id_barang',
            'nama_barang',
            'merk',
            'harga_jual',
            'stok',
            'nama_kategori',
        ], $conditions);

        $data = array();

        if (!empty($barang)) {
            $no = $req->getParam('start') + 1;
            // return var_dump($_SESSION);
            foreach ($barang as $b) {

                $datas['no'] = $no . '.';
                $datas['id_barang'] = $b['id_barang'];
                $datas['nama_barang'] = $b['nama_barang'];
                $datas['merk'] = $b['merk'];
                $datas['harga_jual'] = $b['harga_jual'];
                $datas['stok'] = $b['stok'];
                $datas['nama_kategori'] = $b['nama_kategori'];

                if ($_SESSION['username']) {
                    $datas['aksi'] =
                        '<button type="button" class="btn btn-warning item_edit" data="' . $b['id_barang'] . '"><span class="fa fa-pencil-square-o"></span> Ubah</button> 
                    <button type="button" class="btn btn-danger item_hapus " data="' . $b['id_barang'] . '"><span class="fa fa-trash-o"></span> Delete</button>';
                } else {
                    $datas['aksi'] = '';
                }

                $data[] = $datas;
                $no++;
            }
        }

        $json_data = array(
            "draw"            => intval($req->getParam('draw')),
            "recordsTotal"    => intval($totaldata),
            "recordsFiltered" => intval($totalfiltered),
            "data"            => $data
        );

        echo json_encode($json_data);
    }

    public static function tambah_data($app, $req, $rsp, $args)
    {

        $reg = $args['tambah'];

        barangModel::insert($app->db, $reg);

        $json_data = array(
            "draw"            => intval($req->getParam('draw')),

        );

        echo json_encode($json_data);
    }
    public static function tambah($app, $req, $rsp, $args)
    {

        $reg = $args['tambah'];
        $nama = $reg['tambah_nama'];

        $nama = $app->db->select('tbl_barang', '*', [
            'nama_barang' => $nama
        ]);
        // var_dump($nama);
        // die();
        if ($nama == null) {
            $app->db->insert(
                'tbl_barang',
                $reg
            );

            $_SESSION['hasvalidate'] = true;
            return $rsp->withRedirect('/Data');
        } else {
            $_SESSION['notvalidate'] = true;
            return $rsp->withRedirect('/Data');
        }
    }

    public static function ubah_data($app, $req, $rsp, $args)
    {

        $reg = $args['data'];
        // return var_dump($reg);
        $id_barang = $reg['id_barang'];
        $id_kategori = $reg['id_kategori'];
        $nama_barang = $reg['nama_barang'];
        $merk = $reg['merk'];
        $harga_jual = $reg['harga_jual'];
        $stok = $reg['stok'];

        $data_awal = $app->db->update('tbl_barang', [
            'id_barang' => $id_barang,
            'id_kategori' => $id_kategori,
            'nama_barang' => $nama_barang,
            'merk' => $merk,
            'harga_jual' => $harga_jual,
            'stok' => $stok,
        ], [
            'id_barang' => $id_barang
        ]);
        $json_data = array(
            "draw"            => intval($req->getParam('draw')),
        );

        echo json_encode($json_data);
    }
}
