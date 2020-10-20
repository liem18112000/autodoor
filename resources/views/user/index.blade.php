@extends('layouts.app')

@section('content')
<div class="container">
    <table class='display' id='tableID'>
        <thead class='thead-dark'>
            <tr align="center">
                <th>ID</th>
                <th>Fullname</th>
                <th>Email</th>
                <th>Status</th>
                <th>Role</th>
                <th>Created on</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr align="center">
                <td>{{$user->id}}</td>
                <td>{{$user->name}}</td>
                <td>{{$user->email}}</td>
                @if($user->status == '1')
                    <td><b style='color:green'>Active</b></td>
                @else
                    <td><b style='color:red'>Disabled</b></td>
                @endif
                @if($user->roles->first()->role_type == 1)
                    <td><b>Admin</b></td>
                @else
                    <td><b>Contributor</b></td>
                @endif
                <td>{{$user->created_at}}</td>
            </tr>
            
            @endforeach
        </tbody>
    </table>
</div>
@endsection

@section('script')
<script>
    $('#tableID').DataTable();
</script>
@endsection
