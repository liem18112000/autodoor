@extends('layouts.app')

@section('content')
<div class="container">
    
    <form action='{{ route('cards.update', [$employee->id, $card->id])}}' method="Post">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="employee_id">Code</label>
            <input type="text" name="employee_id" id="employee_id" class="form-control" value='{{$employee->id}}' disabled>
        </div>

        <div class="form-group">
            <label for="fullname">Fullname</label>
            <input type="text" name="fullname" id="fullname" class="form-control" value='{{$employee->fullname}}' disabled>
        </div>
        <div class="form-group">
            <label for="class">Class</label>
            <input type="text" name="classcode" id="class" class="form-control" value='{{$employee->classcode}}' disabled>
        </div>

        <div class="form-group">
            <label for="id">UID</label>
            <input type="text" name="id" id="id" class="form-control" value={{$card->id}} required='required'>
        </div>

        <button type="submit" class="btn btn-primary btn-lg">Update UID</button>

    </form>
   
</div>
@endsection