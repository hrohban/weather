@include('weather.create')

@if(isset($weather))
    @include('weather.list')
@endif



@if(isset($records))
    @include('weather.records')
@endif