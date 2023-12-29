module uim.controllers.exceptions.missingcomponent;

import uim.controllers;

@safe:

// Used when a component cannot be found.
class MissingComponentException : DException {
  mixin(ExceptionThis!("MissingComponentException"));

  void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    messageTemplate("default", "Component class `%s` could not be found.");
  }
}
