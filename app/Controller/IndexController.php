<?php

namespace App\Controller;

use Slim\App;

class IndexController
{
    public static function index($app, $req, $rsp, $args)
    {

        $data = $app->db->select('user_details', '*');
        // return var_dump($data);
        $app->view->render($rsp, "home.html", [
            'data' => $data
        ]);
    }
}
