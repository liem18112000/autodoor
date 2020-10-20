@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    The number of UIDs of AUT and Keuka program: 
                    <br> Total number of registers:<b> {{ $Total['record'] }}</b>
                    
                    <br> - AUT: {{ $Total['AUT'] }}
                    <br> - Keuka: {{ $Total['Keuka'] }}
                    <br> - ITEC and visitors: {{ $Total['ITEC'] }}
                    <hr>
                    <b> Total number of visits (today): {{ $Total['visit'] }}</b> 
                </div>
        </div>
    </div>
</div>
@endsection
