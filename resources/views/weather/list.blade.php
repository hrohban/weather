




    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left m-3">
                <h2>List</h2>
            </div>
            <div class="pull-right d-flex m-2">
                 
                <a class="btn btn-dark" href="{{ route('weather.show',$weather->name,null) }}"> Show all my records </a>
            </div>
        </div>
    </div>

    @if($message = Session::get('success'))
      <div class="alert alert-success">
        <p>
          {{ $message }}
        </p>
      </div>
    @endif


    <table class="table table-bordered col-xs-12 col-sm-12 col-md-10 bg-light text-center mx-auto">
        <tr>
            <th>Icon</th>
            <th>Name</th>
            <th>Date</th>
            <th>Location</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Conditions</th>
            <th>Description</th>
        </tr>
        

       

        <tr>
            <td> <img src="{{ URL::to('/img/icons/'.$weather['icon'].'.png') }}" width="54px" class="d-inline-block"></td>
            <td>{{ $weather['name'] }}</td>
            <td>{{ $weather['specified_at'] }}</td>
            <td>{{ $weather['location'] }}</td>
            <td>{{ $weather['latitude'] }}</td>
            <td>{{ $weather['longitude'] }}</td>
            <td>{{ $weather['conditions'] }}</td>
            <td>{{ $weather['description'] }}</td>
        </tr>

    </table>
    <table class="table table-bordered col-xs-12 col-sm-12 col-md-10 bg-light text-center mx-auto">
    <tr>
            <th>Sunrise</th>
            <th>Sunset</th>
            <th>Tempmax</th>
            <th>Tempmin</th>
            <th>Dew</th>
            <th>Humidity</th>
            <th>Pressure</th>
            <th>Windspeed</th>
            <th>Visibility</th>
            

           
        </tr>
        <tr>
            <td>{{ $weather['sunrise'] }}</td>
            <td>{{ $weather['sunset'] }}</td>
            <td>{{ $weather['tempmax'] }}</td>
            <td>{{ $weather['tempmin'] }}</td>
            <td>{{ $weather['dew'] }}</td>
            <td>{{ $weather['humidity'] }}</td>
            <td>{{ $weather['pressure'] }}</td>
            <td>{{ $weather['windspeed'] }}</td>
            <td>{{ $weather['visibility'] }}</td>
        </tr>
               
    

    </table>

   
