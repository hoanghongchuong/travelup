<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestLoadModelController extends Controller
{
    function loadModel()
	{
	    $arguments = func_get_args();

	    if (empty($arguments)) {
	        throw new \Exception('Missing model class name');
	    }
	    $this->modelDir = config('dangvh.model_dir'); // thay cai' thu muc chua model bat' dau tu app/
	    // vi du app/Models thi nhap "Models"

	    $class     = $arguments[0];
	    $namespace = 'App\\' . $this->modelDir . '\\' . $class;

	    if (!class_exists($namespace) && $class = lcfirst($class)) {
	        $this->{lcfirst($class)} = new class extends \Illuminate\Database\Eloquent\Model
	        {};
	        $this->{lcfirst($class)}->setTable(\Illuminate\Support\Str::snake(\Illuminate\Support\Str::plural($class)));
	        return;
	    }
	}
}
