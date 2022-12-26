<?php

namespace App\Controller;


use Slim\Http\Request;
use Slim\Http\Response;


class userController extends BaseController
{
    public function index($req, $rsp, $args)
    {
        $username = $_SESSION['username'];

        $id = $this->c->db->get('tbl_user', '*', [
            "username" => $username
        ]);
        $data = $this->c->db->select('tbl_barang', [
            "[><]tbl_kategori" => ["id_kategori" => "id_kategori"]
        ], [
            'id_barang',
            'nama_barang',
            'merk',
            'harga_jual',
            'stok',
            'nama_kategori',
        ]);
        // var_dump($data);
        $kategori = $this->c->db->select('tbl_kategori', '*');

        $hasvalidate = isset($_SESSION['hasvalidate']);
        unset($_SESSION['hasvalidate']);

        $this->c->view->render($rsp, 'home.html', [
            'username' => $_SESSION['username'],
            'id'     => $id,
            'data'   => $data,
            'kategori' => $kategori,
            'hasvalidate' => $hasvalidate
        ]);
    }

    public function login(Request $req, Response $res, array $args)
    {
        $user = $this->c->db->get('tbl_user', ['username', 'password'], [
            'username' => $req->getParsedBody()['username']
        ]);
        if ($user) {
            $password = $user['password'];
            if ($password == md5($req->getParsedBody()['password'])) {
                $_SESSION['username'] = $user['username'];
            } else {
                $this->c->flash->addMessage('errors', 'Password Anda Salah');
            }
        } else {
            $this->c->flash->addMessage('errors', 'Username belum terdaftar');
        }
        return $res->withRedirect('/');
    }
    public function register(Request $req, Response $res, array $args)
    {
        $data = $req->getParsedBody();
        $user = $this->c->db->select('tbl_user', ['username'], [
            'username' => $data['username']
        ]);
        if (!$user) {
            $result = $this->c->db->insert('tbl_user', [
                'username' => $data['username'],
                'password' => md5($data['password'])
            ]);
            if (!$result) {
                $this->c->flash->addMessage('errors', 'gagal daftar ada sesuatu yang errors');
            } else {
                $_SESSION['username'] = $data['username'];
            }
            // dd($result);
        } else {
            $this->c->flash->addMessage('errors', 'username telah terdaftar');
        }
        return $res->withRedirect('home.html');
    }
}
