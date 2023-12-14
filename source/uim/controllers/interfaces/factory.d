module uim.collections.interfaces.factory;

import uim.controllers;

@safe:
// Factory method for building controllers from request/response pairs.
interface IControllerFactory {
    /**
     * Create a controller for a given request
     *
     * @param \Psr\Http\Message\IServerRequest $request The request to build a controller for.
     * @throws \UIM\Http\Exception\MissingControllerException
     */
    Json create(IServerRequest serverRequest);

    /**
     * Invoke a controller`s action and wrapping methods.
     *
     * @param Json $controller The controller to invoke.
     */
    IResponse invoke(Json $controller);
}
