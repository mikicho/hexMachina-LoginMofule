package services.google;

import modules.login.services.ILoginService;
import hex.service.stateless.StatelessService;
import hex.service.ServiceConfiguration;
import hex.log.HexLog.*;
import google.api.GoogleAPI;
import google.api.auth2.*;
import modules.login.model.ILoginModel;

/**
 * ...
 * @author Andrei Bunulu
 */
class Login extends StatelessService implements ILoginService
{
	@Inject
	public var model:ILoginModel;

	public function new() 
	{
		super();
		
		#if debug
		debug( "Google Login constructor" );
		#end
	}
	
	override public function call() : Void {
		super.call();
		
		GoogleAPI.load("auth2", function() {
			var googleAuth:GoogleAuth = GoogleAPI.auth2.init({
				client_id: "336663289135-huvf4gfmgj7sqf6knb1i13iuam5le8fq.apps.googleusercontent.com"
			});

			googleAuth.signIn().then(function(googleUser) {
				this._onResultHandler(googleUser);
				model.setUsername(this._result);
			});
		});	
	}

	@PostConstruct
	override public function createConfiguration() : Void
	{
		#if debug
		debug("Google Login createConfiguration");
		#end

		// TODO: service have to setConfiguration?
		this.setConfiguration(new ServiceConfiguration());
		this.setParser(new LoginParser());
	}
	
	public function getUserData():String 
	{
		return this._result;
	}

	public function onLoginRequested():Void
	{
		trace("call to service");
		this.call();
	}
}