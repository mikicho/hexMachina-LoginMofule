package modules.login.services;

import hex.service.stateless.IStatelessService;
import common.ILoginRequestedConnection;

interface ILoginService extends IStatelessService extends ILoginRequestedConnection {
    //TODO: change the returned type
    function getUserData():String;
}