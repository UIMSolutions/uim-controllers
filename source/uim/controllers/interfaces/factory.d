module uim.collections.interfaces.factory;

import uim.controllers;

@safe:
// Factory method for building controllers from request/response pairs.
interface IControllerFactory {
    // Create a controller for a given request
    Json create(IServerRequest serverRequest) ;

    // Invoke a controller`s action and wrapping methods.
    IResponse invoke(Json controllerToInvoke);
}