@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
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
                <table class='display' id='tableID'>
                    <thead class='thead-dark'>
                        <tr align="center">
                            <th>Code</th>
                            <th>UID</th>
                            <th>Fullname</th>
                            <th>Class</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($Employee as $em)
                        <tr align="center">
                            <td>{{ $em->id }}</td>
                            
                            @if($Cards->where('employee_id', $em->id)->count() == 0)
                                <td><b style='color:red'>No card found</b></td>
                                <td align="left">{{ $em->fullname }}</td>
                                <td>{{ $em->classcode }}</td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i>
                                <a class='btn btn-dark' href='{{ route('cards.create', $em->id)}}'>Assign UID</a>
                            @else
                                <td><b style='color:green'>{{$Cards->where('employee_id', $em->id)->first()->id}}</b></td>
                                <td align="left">{{ $em->fullname }}</td>
                                <td>{{ $em->classcode }}</td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i>
                                <a class='btn btn-primary' href='{{ route('cards.edit', [$em->id,$Cards->where('employee_id', $em->id)->first()])}}'>Update UID</a>
                            @endif
                            
                            <a class="btn btn-success" href="{{ route('employees.edit', $em)}}">Update</a>
                            </td>
                            
                            
                            <td class="center"><i class="fa fa-trash-o fa-fw"></i>
                            <form action="{{route('employees.destroy', $em)}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type='submit' class='btn btn-danger'>Delete</button></td>
                            </form>
                            
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            @endguest
        </div>
    </div>
</div>
@endsection



@section('script')
<script>
    $('#tableID').DataTable();
</script>
@endsection