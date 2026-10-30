<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class EnsurePortfolioAdmin
{
    public function handle(Request $request, Closure $next)
    {
        $user = $request->user('api');
        $configuredEmails = (string) config('services.portfolio.admin_emails', '');
        $adminEmails = array_filter(array_map(function ($email) {
            return strtolower(trim($email));
        }, explode(',', $configuredEmails)));

        if (!$user || !in_array(strtolower($user->email), $adminEmails, true)) {
            return response()->json(['message' => 'Forbidden'], 403);
        }

        return $next($request);
    }
}
