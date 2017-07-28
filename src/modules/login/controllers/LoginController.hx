package modules.login.controllers;

import modules.login.services.ILoginService;

class LoginController implements ILoginController {
    @Inject
	public var service:ILoginService;

    public function login():Void {
        this.service.call();
    }
}