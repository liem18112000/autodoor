@extends('layouts.app')

@section('content')
<div class="container">
    
    <form action='{{ route('employees.update', $employee)}}' method="Post">
        @csrf
        @method('PUT')

        <div class="form-group">
            <label for="id">Code</label>
            <input type="text" name="id" id="id" class="form-control" value='{{$employee->id}}' required='required'>
        </div>

        <div class="form-group">
            <label for="fullname">Fullname</label>
            <input type="text" name="fullname" id="fullname" class="form-control" value='{{$employee->fullname}}' required='required'>
        </div>
        <div class="form-group">
            <label for="class">Class</label>
            <input type="text" name="classcode" id="class" class="form-control" value='{{$employee->classcode}}' required='required'>
        </div>

        <button type="submit" class="btn btn-primary btn-lg">Update</button>

    </form>
   
</div>
@endsection
