<?php

namespace App\Http\Controllers;

use App\Models\Weather;
use App\Http\Requests\StoreWeatherRequest;
use App\Http\Requests\UpdateWeatherRequest;
use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;





class WeatherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
       
        //return view('weather.index',compact('post'));
        return view('weather.index');
       

        
      
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(StoreWeatherRequest $request)
    {
        //
       
        return view('weather.index');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreWeatherRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreWeatherRequest $request)
    {
        $request->specified_at=date('Y-m-d', strtotime($request->specified_at));
        $url = 'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/'.$request->location.'/'.$request->specified_at.'?key=YARPD9NSSYN3JCAMTFC68LBS4 ';
       
        $str = @file_get_contents($url);
        if ($str === FALSE) {
           echo $request->location." is not found";
        } else {
            $response = file_get_contents($url);
            $newData = json_decode($response,true);
            foreach($newData['days'] as $day) {
                    //var_dump($newData['latitude']); die();
                    $weather = Weather::create([
                             'name' => $request->name,
                             'specified_at' => $request->specified_at,
                             'location' => $request->location,
                             'latitude' =>$newData['latitude'],
                             'longitude'=>$newData['longitude'],
                             'datetime'=>$day['datetime'],
                             'conditions'=>$day['conditions'],
                             'description'=>$day['description'],
                             'icon'=>$day['icon'],
                             'sunrise'=>$day['sunrise'],
                             'sunset'=>$day['sunset'],
                             'tempmax'=>$day['tempmax'],
                             'tempmin'=>$day['tempmin'],
                             'dew'=>$day['dew'],
                             'humidity'=>$day['humidity'],
                             'pressure'=>$day['pressure'],
                             'windspeed'=>$day['windspeed'],
                             'visibility'=>$day['visibility']
                                                     
                         ]);
                         
            }
        }
           // return redirect()->route('weather.create')->with('success', 'record created successfully');
           return view('weather.index',compact('weather'));
        }
        

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Weather  $weather
     * @return \Illuminate\Http\Response
     */
    public function show(string $name,Request $request)
    {
        $request->validate([
            'filter' => 'regex:/^[a-zA-Z0-9 ]+$/'
           
          ]);
       
        $filter=$request->filter;
        if (!empty($filter)) {
            $records = Weather::where('name', $name)->where('location', 'like', '%'.$filter.'%')->sortable()->paginate(10);
            
        } else {
            $records = Weather::where('name', $name)->sortable()->paginate(10);
        }
    
        
        //$records = Weather::orderBy('id', 'DESC')->where('name', $name)->paginate(10);
       // $records = Weather::where('name', $name)->sortable()->paginate(10);
        return view('weather.index', compact('records'))->with('filter', $filter)->with('name',$name);
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Weather  $weather
     * @return \Illuminate\Http\Response
     */
    public function edit(Weather $weather)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateWeatherRequest  $request
     * @param  \App\Models\Weather  $weather
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateWeatherRequest $request, Weather $weather)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Weather  $weather
     * @return \Illuminate\Http\Response
     */
    public function destroy(Weather $weather)
    {
        //\
       $myweather=$weather;
       
        $weather->delete();
        //$this->show($myweather);
        //dd($myweather->name);
        //return redirect()->back()->with('success', 'record deleted successfully');
        return redirect()->back()->with('success', 'record deleted successfully');
       
    }
}
