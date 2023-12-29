module uim.controllers.exceptions.security;

import uim.controllers;

@safe:

// Security exception - used when SecurityComponent detects any issue with the current request
class SecurityException : BadRequestException {

  // Reason for request blackhole
  mixin(TProperty!("string", "reason"));

  // Security Exception type
  protected string _type = "secure";  
  string getType() {
    return _type;
  }

  void setMessage(string newMessage) {
    this.message = newMessage;
  }

}
