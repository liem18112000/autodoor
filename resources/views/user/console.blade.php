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
                        <th>Name</th>
                        <th>Location</th>
                        <th>Type</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($devices as $device)
                    <tr align="center">
                        <td>{{ $device->id }}</td>
                        <td>{{ $device->name }}</td>
                        <td>{{ $device->location }} </td>
                        <td>{{ $device->type }}</td>
                        <td>{{ $device->status }}</td>
                        
                        <td class="center">
                            @if($device->status == '0')
                            <form action="{{route('user.open', $device->id)}}" method="POST">
                                @csrf
                                @method('POST')
                                <button type='submit' class='btn btn-primary'>
                                    <i class="fas fa-key"> Open</i>
                                </button>
                            </form>
                            @else
                            <a name="" id="" class="btn btn-secondary" href="#" role="button" disabled="disabled">
                                <i class="fas fa-lock">
                                    Already Open
                                </i>
                            </a>
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