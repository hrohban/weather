@extends('layouts.master')

@section('content')


@include('layouts.partials.error')
@if($message = Session::get('success'))
      <div class="alert alert-success">
        <p>
          {{ $message }}
        </p>
      </div>
    @endif
  
<form id="myForm" action="{{ route('weather.store') }}" method="POST" enctype="multipart/form-data" class="border p-5 m-4 bg-light" >
@csrf

<div class="row">
    <div class="col-lg-12 ">
        <div class="pull-left d-flex ">
        <img src="{{ URL::to('/img/weather.webp') }}" width="54px" class="d-inline-block">

            <h2 class="d-inline-block  mt-4 text-secondary" >Weather</h2>
        </div>
        
    </div>
</div>
     <div class="row d-flex align-items-center justify-content-center">
        <div class="col-xs-12 col-sm-12 col-md-10">
            <div class="form-group">
                <strong>Your Name:</strong>
                <input type="text" name="name" id="myname" class="form-control" placeholder="" value="@if(isset($weather)){{ $weather->name }}@endif">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-10">
            <div class="form-group">
                <strong>Date:</strong>
                <input type="date" name="specified_at" id="mydate" class="form-control" placeholder=""   value="@if(isset($weather)){{ $weather->specified_at }}@endif">
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-10">
            <div class="form-group">
                <strong>Location(You can type city name or latitude,longitude):</strong>
                <input type="text" name="location" id="mylocation" class="form-control" placeholder="" value="  @if(isset($weather)){{ $weather->location }}@endif">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
           
                <button type="submit" class="btn btn-success  col-xs-12 col-sm-12 col-md-4 text-center" style="font-size: 20px">Submit</button>
         
            
                <button  type="button" onclick="resetForm();"  class="btn btn-warning  col-xs-12 col-sm-12 col-md-4 text-center" style="font-size: 20px">Clear form</button>
            

        </div>
    </div>

</form>



@endsection

<script>
function resetForm() {
    document.getElementById("myname").value="";
    document.getElementById("mydate").value="";
    document.getElementById("mylocation").value="";
}
</script>