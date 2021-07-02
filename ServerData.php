<?php

class ServerData
{

    private $connection;

    public function __construct($connection)
    {
        $this->connection = $connection;
    }

    public function new_product()
    {
        $new_prodoct = $this->connection->prepare("SELECT * FROM product ORDER BY id limit 10");
        $new_prodoct->execute();
        $new_prodoct = $new_prodoct->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($new_prodoct);

    }

    public function order_product()
    {

        $order_product = $this->connection->prepare("SELECT * FROM product ORDER BY order_number limit 10");
        $order_product->execute();
        $order_product = $order_product->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($order_product);
    }

    public function get_sliders()
    {

        $get_sliders = $this->connection->prepare("SELECT * FROM sliders");
        $get_sliders->execute();
        $get_sliders = $get_sliders->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($get_sliders);
    }

    public function get_sliders1($data)
    {
        $id = array_key_exists('id', $data) ? $data['id'] : 0;
        $get_sliders1 = $this->connection->prepare("SELECT * FROM product WHERE id=?");
        $get_sliders1->execute([$id]);
        $get_sliders1 = $get_sliders1->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($get_sliders1);
    }

    public function get_sliders2($data)
    {

        $product_id = array_key_exists('product_id', $data) ? $data['product_id'] : 0;
        $get_sliders2 = $this->connection->prepare("SELECT * FROM imgslide WHERE product_id=? ORDER BY id limit 10");
        $get_sliders2->execute([$product_id]);
        $get_sliders2 = $get_sliders2->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($get_sliders2);

    }

    public function getProductData($data)
    {
        $id = array_key_exists('id', $data) ? $data['id'] : 0;
        $product_data = $this->connection->prepare("SELECT * FROM product WHERE id=?");
        $product_data->execute([$id]);
        $product_data = $product_data->fetch(PDO::FETCH_ASSOC);
        echo json_encode($product_data);
    }

    public function add_comment($data)
    {
        $product_id = array_key_exists('product_id', $data) ? $data['product_id'] : 0;
        if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['comment'])) {

            $name = $_POST['name'];
            $email = $_POST['email'];
            $comment = $_POST['comment'];
            $time = time();


            $new_comment = $this->connection->prepare('INSERT INTO `comment` (
                       `name`,`email`,`content`,`product_id`,`parent_id`,`status`,`time`
                       ) VALUES (?, ?, ?, ?, 1, 1,?);');

            $new_comment->execute([$name, $email, $comment, $product_id, $time]);

            return 'نظر با موفقیت ثبت شد';
        }
    }

    public function get_comment($data)
    {

        $product_id = array_key_exists('product_id', $data) ? $data['product_id'] : 0;
        $comment = $this->connection->prepare("SELECT * FROM comment WHERE product_id=? ORDER BY id limit 13");
        $comment->execute([$product_id]);
        $comment = $comment->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($comment);

    }

    public function register_user()
    {
        $result = array();
        require_once 'Token.php';

        if (isset($_POST['username']) &&  isset($_POST['email']) && isset($_POST['password'])) {

            $username = $_POST['username'];

            $email = $_POST['email'];
            $password = $_POST['password'];
            $active_code = rand(9999, 100000);
            $password_hash = password_hash($password, PASSWORD_DEFAULT);

            $user = $this->connection->prepare('INSERT INTO `users` 
                  (`username`,  `email`, `status`, `active_code`, `password`)
                     VALUES ( ?, ?,  ?, ?, ?);');

            if ($user->execute([$username, $email, $active_code, 0, $password_hash])) {
                $result['register'] = $this->connection->lastInsertId();
            } else {
                $result['error'] = 'ok';
            }
        }

        else {

            $result['error'] = 'ok';
        }


        echo json_encode($result);
    }
}


//$user = $this->connection->prepare('UPDATE `users` SET
//                   `username`=?, `mobile`=?, `email`=?, `active_code`= ? , `password`=?  WHERE `users`.`id` = ?;');
//
//if ($user->execute([$username, $mobile, $email, $active_code, $password_hash, $checkUser['id'],])) {
//    $result['register'] = $checkUser['id'];
//} else {
//    $result['error'] = 'Error in Enter ';
//}

