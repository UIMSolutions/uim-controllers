module uim.controllers.classes.error;

import uim.cake;

@safe:

/**
 * Error Handling Controller
 *
 * Controller used by ErrorHandler to render error views.
 */
class ErrorController : Controller {
    // Get alternate view classes that can be used in content-type negotiation.
    string[] viewClasses() {
        return [JsonView.classname];
    }
    
    // Initialization hook method.
    bool initialize(Json[string] initData = null) {
        super.initialize(initData);
    }

    /**
     * beforeRender callback.
     * Params:
     * \UIM\Event\IEvent<\UIM\Controller\Controller> anEvent Event.
     */
    Response beforeRender(IEvent anEvent) {
        auto viewBuilder = this.viewBuilder();
        string templatePath = "Error";

        if (
            this.request.getParam("prefix") &&
            in_array(viewBuilder.getTemplate(), ["error400", "error500"], true)
        ) {
            someParts = split(DIRECTORY_SEPARATOR, (string)viewBuilder.templatePath, -1);
            templatePath = join(DIRECTORY_SEPARATOR, someParts) ~ DIRECTORY_SEPARATOR ~ "Error";
        }

        viewBuilder.templatePath(templatePath);
        return null;
    }
}
