module uim.controllers.exceptions.missingaction;

import uim.controllers;

@safe:

/* Missing Action exception - used when a controller action
 * cannot be found, or when the controller`s isAction() method returns false.
 */
class MissingActionException : UimException {
    protected string _messageTemplate = "Action `%s::%s()` could not be found, or is not accessible.";
}
