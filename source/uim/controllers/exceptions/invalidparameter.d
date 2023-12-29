module uim.controllers.exceptions.invalidparameter;

import uim.controllers;

@safe:

/*use Throwable; */
// Used when a passed parameter or action parameter type declaration is missing or invalid.
class InvalidParameterException : UimException {
    protected STRINGAA _templates = [
        "failed_coercion": "Unable to coerce `%s` to `%s` for `%s` in action `%s::%s()`.",
        "missing_dependency": "Failed to inject dependency from service container for parameter `%s` with type `%s` in action `%s::%s()`.",
        "missing_parameter": "Missing passed parameter for `%s` in action `%s::%s()`.",
        "unsupported_type": "Type declaration for `%s` in action `%s::%s()` is unsupported.",
    ];

    /**
     * Switches message template based on `template` key in message array.
     * Params:
     * array|string amessage Either the string of the error message, or an array of attributes
     *  that are made available in the view, and sprintf()"d into Exception::_messageTemplate
     * @param int|null $code The error code
     * @param \Throwable|null $previous the previous exception.
     */
    this(array|string amessage = "", int $code = null, ?Throwable $previous = null) {
        if (isArray($message)) {
           _messageTemplate = this.templates[$message["template"]] ?? "";
            unset($message["template"]);
        }
        super($message, $code, $previous);
    }
}
