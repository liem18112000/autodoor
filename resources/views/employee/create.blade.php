@extends('layouts.app')

@section('content')
<div class="container">
    
    <form action='{{ route('employees.store')}}' method="Post">
        @csrf

        <div class="form-group">
            <label for="id">Code</label>
            <input type="text" name="id" id="id" class="form-control" placeholder="Enter code" required='required'>
        </div>

        <div class="form-group">
            <label for="fullname">Fullname</label>
            <input type="text" name="fullname" id="fullname" class="form-control" placeholder="Enter fullname" required='required'>
        </div>
        <div class="form-group">
            <label for="class">Class</label>
            <input type="text" name="classcode" id="class" class="form-control" placeholder="Enter class Eg: Class Code, GUEST, EMPLOYEE, ..." required='required'>
        </div>

        <button type="submit" class="btn btn-primary btn-lg">Create</button>

    </form>
   
</div>
@endsection
