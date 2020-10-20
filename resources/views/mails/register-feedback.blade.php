@component('mail::message')
# Welcome to {{ config('app.name') }} Family

Hello, {{$user->name}}!

@if($request->verified == '1')

Your account has been verified by admin.

So, There are so many service you have join now!

@else

Your account has been rejected by admin.

There are some requirement that your account do not have!

@endif

Thanks,<br>
{{ config('app.name') }}
@endcomponent
