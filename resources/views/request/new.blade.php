@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Pending Requests Lists</h1>
    <hr/>
    <div class='row'>
        <div class='col-lg-4 col-md-4 col-sm-6'>
            <a class="btn btn-success btn-block" href="{{route('admin.request.new')}}" role="button">New Requests</a>
        </div>
        <div class='col-lg-4 col-md-4 col-sm-6'>
            <a class="btn btn-dark btn-block" href="{{route('admin.request.old')}}" role="button">Old Requests</a>
        </div>
        <div class='col-lg-4 col-md-4 col-sm-12'>
            <a class="btn btn-primary btn-block" href="{{route('admin.request.index')}}" role="button">All Requests</a>
        </div>
    </div>
    <hr/>
     <table class='display' id='tableID'>
        <thead class='thead-dark'>
            <tr align="center">
                <th>ID</th>
                <th>Sender Name</th>
                <th>Sender Email</th>
                <th>Request Type</th>
                <th>Verified</th>
                <th>Admin</th>
                <th>Created on</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($requests as $request)
            <tr align="center">
                <td>{{$request->id}}</td>
                <td>{{$request->user->name}}</td>
                <td>{{$request->user->email}}</td>
                <td>{{$request->request_type}}</td>
                @if($request->verified == '1')
                    <td><b style='color:green'>Verified</b></td>
                @else
                    <td><b style='color:red'>Not verified</b></td>
                @endif
                @if($request->authority)
                    <td><b>{{$request->authority}}</b></td>
                @else
                    <td><b>N/A</b></td>
                @endif
                <td>{{$request->created_at}}</td>
                <td>
                    <a class="btn btn-success mr-2" href="{{route('admin.request.accept', $request)}}" role="button">Accept</a>
                    
                    <a class="btn btn-danger" href="{{route('admin.request.reject', $request)}}" role="button">Reject</a>
                </td>
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
