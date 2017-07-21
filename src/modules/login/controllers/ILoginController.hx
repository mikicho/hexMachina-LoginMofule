package modules.login.controllers;

import hex.control.forward.IForwarder;
import hex.di.IInjectorContainer;

interface ILoginController extends IForwarder extends IInjectorContainer {
    function login():Void;
}