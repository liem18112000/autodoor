@component('mail::message')
# Register request verification

Hello, {{$user->name}}!

Your account will be verified by admin as soon as possible!

Thanks,<br>
{{ config('app.name') }}
@endcomponent
