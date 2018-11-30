<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Contact\AddNewsPosition;
use App\Models\Contact;
use DB;

class TrangchuController extends Controller
{
    public function trangchu () {
    	$data['trangchu'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','asc')
            ->get();


        $data['tinmoinhat'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','DESC')
            ->take(7)
            ->get();

        $data['tinnoibatbanner'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name','news.featured')
            ->where('category.parent_id','!=',0)
            ->where('news.featured','on')
            /*->where('category.slug',$slug)*/
            /*->inRandomOrder('news.id')*/
            ->orderBy('news.id','DESC')
            ->paginate(6);

        $data['tinnoibat'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name','news.featured')
            ->where('category.parent_id','!=',0)
            ->where('news.featured','on')
            /*->where('category.slug',$slug)*/
            /*->inRandomOrder('news.id')*/
            ->orderBy('news.id','DESC')
            ->get();

        $data['randdombanner'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name','news.featured')
            ->where('category.parent_id','!=',0)
            /*->where('news.featured','on')*/
            /*->where('category.slug',$slug)*/
            ->inRandomOrder('news.id')
            ->get();

        $data['randdom'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name','news.featured')
            ->where('category.parent_id','!=',0)
            /*->where('news.featured','on')*/
            /*->where('category.slug',$slug)*/
            ->inRandomOrder('news.id')
            ->get();

    	return view('frontend.pages.trangchu',$data);
    }

    public function theloai ($slug) {
    	$data['tintuc'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag')
            ->where('category.slug',$slug)
            ->orderBy('news.id','DESC')
            ->paginate(5);

        $data['tinmoinhat'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','DESC')
            ->get();

        $data['cate'] = DB::table('category')->select('*')->where('slug',$slug)->first();

    	return view('frontend.pages.theloai',$data);
    }

    public function chitiet ($slug) {
    	/*$data['chitiettin'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title as titlenew','news.author','news.status','news.intro','youtube','news.image','news.content as contentnew','news.created_at','news.alt','news.title_tag')
            ->where('category.slug',$slug)
            ->orderBy('news.id','DESC')
            ->first();*/
        $data['chitiettin'] = DB::table('news')->select('*')->where('slug',$slug)->first();

        $data['tag'] = DB::table('news')->select('*')->where('slug',$slug)->get();

        $data['tinmoinhat'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','DESC')
            ->get();

    	return view('frontend.pages.chitiet',$data);
    }

    /*public function postlienhe (AddNewsPosition $request) {
        dd($request);
       $lienhe = new Contact;
       $lienhe->name = 0;
       $lienhe->email = $request->emailgtv;
       $lienhe->created_at = new \Datetime;
       $lienhe->save();
       
       return response()->json([
                'success' => 'Bạn Đã Gửi Mail Thành Công',
                'check' => 'login'
            ]);
    }*/

     public function timkiem ($keyword) {
      $data = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            ->where('title','like','%'. $keyword . '%')
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','DESC')
            ->paginate(6);

      $tinmoinhat = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','DESC')
            ->get();

      $tag = DB::table('tags')->select('id','tags')->get();

      if(!empty($data)){
        return view ('frontend.pages.timkiem',['data' => $data,'tag' => $tag,'tinmoinhat' => $tinmoinhat]);
      }else{
        return redirect()->route('Frontend.Trangchu');
      }       
    }   

    public function search (Request $request) {
      return redirect()->route('Frontend.Search',['keyword' => $request->search]);
    } 

    public function tags ($tag) {
        $midTags = str_slug(($tag),' ');
      
        $data['tagsss'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            ->where('news.title','like','%'. $midTags . '%')
            ->orderBy('news.id','DESC')
            ->paginate(6);

        $data['tinmoinhat'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag','category.name as name')
            ->where('category.parent_id','!=',0)
            /*->where('category.slug',$slug)*/
            ->orderBy('news.id','DESC')
            ->get();

      return view ('frontend.pages.tags',$data); 
    }

    public function search_pro (Request $request) {
      return redirect()->route('tags',['tag' => $request->search_pro]);
    }


    public function ajaxHome () {

        $limit = 30; if(isset($_GET['limit'])) { $limit = $_GET['limit']; };
        $page = (int)$_GET['page'];
        $data['data'] = DB::table('category_news')
            ->join('news','category_news.news_id','=','news.id')
            ->join('category','category_news.category_id','=','category.id')
            ->select('news.id as idd','news.slug as pslug','category.slug as cslug','news.title','news.author','news.status','news.intro','youtube','news.image','news.content','news.created_at','news.alt','news.title_tag')
            ->skip($page)->take($limit)
            ->orderBy('news.id','DESC')
            ->get();

        

        return view('frontend.pages.ajax-home', $data);
    }
}
