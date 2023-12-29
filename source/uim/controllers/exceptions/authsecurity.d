module uim.controllers.exceptions.authsecurity;

import uim.controllers;

@safe:

// Auth Security exception - used when SecurityComponent detects any issue with the current request
class AuthSecurityException : SecurityException {
    // Security Exception type
    protected string _type = "auth";
}
