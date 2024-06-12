<?php

namespace App\Http\Controllers;

use App\Models\Product;
use BotMan\BotMan\Messages\Incoming\Answer;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BotManController extends Controller
{
    /**
     * Place your BotMan logic here.
     */
    public function handle()
    {
        $botman = app('botman');

        $botman->hears('{message}', function ($botman, $message) {
            $message = Str::slug($message);
            switch ($message) {
                case 'toi-muon-tu-van':
                    $this->askRequest($botman);
                    break;
                case 'toi-muon-tra-cuu-san-pham':
                    $this->askSearch($botman);
                    break;
                case 'san-pham-nao-dang-ban-chay':
                    $this->askTop($botman);
                    break;
                default:
                    $botman->reply('Hãy cho tôi biết bạn cần gì?
                    <br/>  Tôi muốn tư vấn
                    <br/>  Tôi muốn tra cứu sản phẩm
                    <br/>  Sản phẩm nào đang bán chạy
                    ');
                    break;
            }
        });

        $botman->listen();
    }

    public function askTop($botman)
    {
        // $products = Product::orderByDesc('')->limit(3)
        //     ->get();
        $products = DB::table('orders')
            ->join('products', 'products.id', '=', 'orders.od_product_id')
            ->select(DB::raw('sum(od_qty) as sum_qty'), 'products.*')
            ->groupBy('od_product_id')->orderByDesc('sum_qty')->limit(3)->get();
        if ($products->count() > 0) {
            $botman->reply('Dưới đây là top 3 sản phẩm bán chạy nhất');
            foreach ($products as $product) {
                $botman->reply('<a target="_blank" href=' . env('APP_URL', 'http://127.0.0.1:8000/') .
                    '/san-pham/' . Str::slug($product->pro_slug)  . '-' . $product->id
                    . '>' . Str::slug($product->pro_slug) . '</a></br>
                        <img width="250px" height="100px" src=' . env('APP_URL', 'http://127.0.0.1:8000/')
                    . pare_url_file($product->pro_avatar) . ' /></br> Đã bán ' . $product->sum_qty);
            }
        } else {
            $botman->reply('Không có sản phẩm nào!');
        }
    }

    public function askRequest($botman)
    {
        $botman->ask('Bạn cần tư vấn sản phẩm gì?', function (Answer $answer, $botman) {
            $name = Str::slug($answer->getText());
            $products = Product::where('pro_slug', 'like', '%' . $name . '%')->limit(3)
                ->get();
            if ($products->count() > 0) {
                $this->say('Dưới đây là 1 số sản phẩm theo yêu cầu của bạn');
                foreach ($products as $product) {
                    $this->say('<a target="_blank" href=' . env('APP_URL', 'http://127.0.0.1:8000/') .
                        '/san-pham/' . Str::slug($product->pro_slug)  . '-' . $product->id
                        . '>' . Str::slug($product->pro_slug) . '</a></br>
                        <img width="250px" height="100px" src=' . env('APP_URL', 'http://127.0.0.1:8000/')
                        . pare_url_file($product->pro_avatar) . ' /></br>');
                }
            } else {
                $this->say('Không có sản phẩm nào!');
            }
        });
    }

    public function askSearch($botman)
    {
        $botman->ask('Bạn muốn tra cứu sản phẩm gì? Hãy nhập tên sản phẩm', function (Answer $answer, $botman) {
            $name = Str::slug($answer->getText());
            $arraySlug = explode('-', $name);
            unset($arraySlug[count($arraySlug) - 1]);
            $name = implode('-', $arraySlug);
            $product = Product::firstWhere('pro_slug', $name);
            if ($product) {
                $this->say('Thông tin sản phẩm</br>
                Số lượng trong kho: ' . $product->pro_number . '
                ');
                $this->say('<a target="_blank" href=' . env('APP_URL', 'http://127.0.0.1:8000/')
                    . '/san-pham/' . Str::slug($product->pro_slug) . $product->id
                    . '>' . Str::slug($product->pro_slug) . '</a></br>
                        <img width="250px" height="100px" src=' . env('APP_URL', 'http://127.0.0.1:8000/')
                    . pare_url_file($product->pro_avatar) . ' /></br>');
            } else {
                $this->say('Không có sản phẩm nào!');
            }
        });
    }
}
