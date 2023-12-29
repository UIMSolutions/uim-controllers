module uim.controllers.exceptions.security;

import uim.controllers;

@safe:

// Security exception - used when SecurityComponent detects any issue with the current request
class SecurityException : BadRequestException {
  mixin(ExceptionThis!("SecurityException"));

  void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);
  }

  // Reason for request blackhole
  mixin(TProperty!("string", "reason"));

  // Security Exception type
  protected string _type = "secure";  
  @property string type() {
    return _type;
  }
}
