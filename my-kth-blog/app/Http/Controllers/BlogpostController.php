<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
//use Log;
use App\Http\Requests;
use App\Blogpost;

class BlogpostController extends Controller {

    public function show_all() {
        $blogposts = Blogpost::all();
        return view('index', compact('blogposts'));
    }

    public function show_one($id) {
      $blogpost = Blogpost::find($id);

      $author_id = $blogpost->author;
      $image_name = $blogpost->image_name;
      $title = $blogpost->title;
      $intro = $blogpost->intro;
      $body = $blogpost->body;
      $body = nl2br($body);
      $created_at = $blogpost->created_at;
      $updated_at = $blogpost->updated_at;
      return view('blogpost', compact('image_name','title', 'intro', 'body', 'created_at', 'updated_at'));
    }
}
