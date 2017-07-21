package modules.login;

import modules.login.model.LoginModel;
import modules.login.model.ILoginModel;
import modules.login.services.ILoginService;
import hex.module.ContextModule;
import modules.login.view.ILoginView;
import modules.login.controllers.LoginController;
import modules.login.controllers.ILoginController;
import hex.di.mapping.MappingDefinition;

@Dependency(var _:ILoginView)
@Dependency(var _:ILoginService)

class LoginModule extends ContextModule implements ILoginModule 
{
	public function new(view:MappingDefinition, loginService:MappingDefinition) 
	{
		super();
		
		this.getLogger().info("LoginModule initialized");

		this._map(ILoginModel, LoginModel);
		this._map(ILoginController, LoginController);
	}

	override function _onInitialisation() : Void
	{
		trace("_onInitialisation");
		this._get(ILoginModel).trigger.connect(this._get(ILoginView));
		this._get(ILoginController).login();
	}
}