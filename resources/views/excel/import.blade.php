@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Import data from Excel to Employee table</div>

                <div class="card-body">
                    @guest
                        You have to login first!!!
                    @else
                        @if(session('errors'))
                            @foreach ($errors as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        @endif
                        @if(session('success'))
                            {{ session('success') }}
                        @endif
                        <br>
                        <form action="{{ url('/import') }}" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <label>Upload to server and Import to database</label>
                            <input type="file" name="file" id="file"><br>
                            <button type="submit">Import to DB</button>
                        </form>
                    @endguest
                </div>
        </div>
    </div>
</div>
@endsection