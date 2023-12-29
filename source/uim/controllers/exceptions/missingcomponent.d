module uim.controllers.exceptions.missingcomponent;ceptions.missingcomponent;

import uim.controllers;

@safe:

// Used when a component cannot be found.
class MissingComponentException : UimException {
    protected string _messageTemplate = "Component class `%s` could not be found.";
}
