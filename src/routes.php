<?php


use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;
use App\Middleware\Auth;
use App\Controller\IndexController;
use App\Controller\userController;
use App\Controller\DataController;
use App\Controller\BaseController;


return function (App $app) {
    $container = $app->getContainer();

    $app->get('/', UserController::class . ':index')->add(new Auth());
    $app->group('/auth', function ($app) {
        $app->get('/login', function ($request, $response, $args) {
            return $this->view->render($response, '/login.html');
        });
        $app->post('/login', UserController::class . ':login');
        $app->get('/register', function ($request, $response, $args) {
            if (Auth::isLogined()) {
                return $response->withRedirect('/');
            }
            return $this->view->render($response, '/register.html');
        });
        $app->post('/register', UserController::class . ':register');
        $app->post('/logout', function ($request, $response, $args) {
            session_destroy();
            return $response->withRedirect('/auth/login');
        })->add(new Auth());
    });

    $app->get('/Data', function (Request $request, Response $response, array $args) use ($container) {

        // Render index view
        return userController::index($this, $request, $response,  $args);
    })->add(new Auth());

    $app->post('/delete', function (Request $request, Response $response, array $args) use ($container) {
        $data = $request->getParsedBody();

        return DataController::delete($this, $request, $response,  [
            'data' => $data
        ]);
    });
    $app->get('/{id}/select', function (Request $request, Response $response, array $args) use ($container) {
        $data = $args['id'];

        return DataController::ubah_modal($this, $request, $response,  [
            'data' => $data
        ]);
    });

    $app->post('/tambah-data', function (Request $request, Response $response, array $args) use ($container) {
        $tambah = $request->getParsedBody();


        // return var_dump($tambah);
        return DataController::tambah_data($this, $request, $response,  [
            'tambah' => $tambah
        ]);
    });

    $app->post('/tambah', function (Request $request, Response $response, array $args) use ($container) {
        $reg = $request->getParsedBody();
        // return var_dump($reg);
        return DataController::tambah($this, $request, $response,  [
            'tambah' => $reg
        ]);
    });


    $app->get('/tampil-data', function (Request $req, Response $response, array $args) use ($container) {

        return DataController::tampil_data($this, $req, $response,  $args);
    });

    $app->post('/ubah', function (Request $request, Response $response, array $args) use ($container) {
        $data = $request->getParsedBody();
        return DataController::ubah_data($this, $request, $response,  [
            'data' => $data
        ]);
    });
};
