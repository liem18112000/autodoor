@extends('layouts.app')

@section('content')
<div class="container">
    <h1>All Track List</h1>
    <hr/>
    <div class="card">
        <div class="card-body">
            <table class='display' id='tableID'>
                <thead class='thead-dark'>
                    <tr align="center">
                        <th>ID</th>
                        <th>Access Type</th>
                        <th>Card UID</th>
                        <th>User</th>
                        <th>Device</th>
                        <th>Verify</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($tracks as $track)
                    <tr align="center">
                        <td>{{ $track->id }}</td>
                        <td>{{ $track->type }}</td>
                        <td>
                            @if($track->card_id)    
                                {{ $track->card_id }}   
                            @else
                                Not Available
                            @endif
                        </td>
                        <td> 
                            @if($track->user)
                                {{ $track->user->name}}
                            @elseif($track->card)
                                {{ $track->card->employee->name}}
                            @else
                                Not Available
                            @endif
                        </td>
                        <td>{{ $track->device->name}}</td>
                        <td>
                            @if($track->pass == '1')
                                <a name="" id="" class="btn btn-success" href="#" role="button">Success</a>
                            @else
                                <a name="" id="" class="btn btn-danger" href="#" role="button">Failed</a>
                            @endif
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection



@section('script')
<script>
    $('#tableID').DataTable();
</script>
@endsection