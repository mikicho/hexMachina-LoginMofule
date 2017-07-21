package services.facebook;

import modules.login.services.ILoginService;
import hex.service.stateless.AsyncStatelessService ;
import hex.service.ServiceConfiguration;
import hex.log.HexLog.*;

class Login extends AsyncStatelessService implements ILoginService
{
	public function new() 
	{
		super();
		
		#if debug
		debug( "Facebook Login constructor" );
		#end
	}
	
	override public function call() : Void {
		super.call();

        trace("facebook");
	}

	@PostConstruct
	override public function createConfiguration() : Void
	{
		#if debug
		debug("Facebook Login createConfiguration");
		#end
		
		// TODO: service have to setConfiguration?
		this.setConfiguration(new ServiceConfiguration());
		this.setParser(new LoginParser());
	}
	
	public function getUserData():String 
	{
		return this._result;
	}
}