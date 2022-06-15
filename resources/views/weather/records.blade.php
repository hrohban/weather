




    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left m-3">
                <h2>{{$name}}'s  records</h2>
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
    <form action="{{ route('weather.show',$name)}}" method="GET" class="form-inline" >
        <div class="form-group mb-2">
            <label for="filter" class="col-sm-2 col-form-label">Filter</label>
            <input type="text" class="form-control" id="filter" name="filter" placeholder="Location name..." value="{{$filter}}">
        </div>
        <button type="submit" class="btn btn-info mb-2">Filter</button>
    </form>

    <table class="table table-bordered table-striped table-hover col-lg-12 bg-light">
        <tr>
            
            <th>Icon</th>
            <th>@sortablelink('specified_at','Date')</th>
            <th>@sortablelink('location')</th>
            <th>@sortablelink('latitude')</th>
            <th>@sortablelink('longitude')</th>
            <th>Conditions</th>
            <th>Description</th>
            <th>@sortablelink('sunrise')</th>
            <th>@sortablelink('sunset')</th>
            <th>@sortablelink('tempmax')</th>
            <th>@sortablelink('tempmin')</th>
            <th>@sortablelink('dew')</th>
            <th>@sortablelink('humidity')</th>
            <th>@sortablelink('pressure')</th>
            <th>@sortablelink('windspeed')</th>
            <th>@sortablelink('visibility')</th>
            <th>Action</th>
        </tr>
    @foreach ($records as $record)
   <?php $record['specified_at']=date('Y-m-d', strtotime($record['specified_at']));?>
        <tr>
            
             <td> <img src="{{ URL::to('/img/icons/'.$record['icon'].'.png') }}" width="54px" class="d-inline-block"></td>
            <td>{{ $record['specified_at'] }}</td>
            <td>{{ $record['location'] }}</td>
            <td>{{ $record['latitude'] }}</td>
            <td>{{ $record['longitude'] }}</td>
            <td>{{ $record['conditions'] }}</td>
            <td>{{ $record['description'] }}</td>
            <td>{{ $record['sunrise'] }}</td>
            <td>{{ $record['sunset'] }}</td>
            <td>{{ $record['tempmax'] }}</td>
            <td>{{ $record['tempmin'] }}</td>
            <td>{{ $record['dew'] }}</td>
            <td>{{ $record['humidity'] }}</td>
            <td>{{ $record['pressure'] }}</td>
            <td>{{ $record['windspeed'] }}</td>
            <td>{{ $record['visibility'] }}</td>
            <td style="width: 250px" class="pt-4 pr-4">
        <form action="{{ route('weather.destroy', $record) }}" method="POST">
            
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>
    </td>
            

            
        </tr>
               
        @endforeach

    </table>
<div class="d-flex">
    <div class="pagination text-center mx-auto">
    {{ $records->render() }} 
</div>
</div>
