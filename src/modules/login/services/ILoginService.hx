package modules.login.services;

import hex.service.stateless.IAsyncStatelessService;

/**
 * @author Andrei Bunulu
 */
interface ILoginService extends IAsyncStatelessService {
    //TODO: change the returned type
    function getUserData():String;
}