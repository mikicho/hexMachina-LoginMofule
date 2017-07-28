package modules.login.model;

import common.ILoginConnection;
import hex.event.ITrigger;

/**
 * ...
 * @author Andrei Bunulu
 */
class LoginModel implements ILoginModel
{
	public var trigger( default, never ):ITrigger<ILoginConnection>;

	var _username:String;
	
	public function setUsername(name:String):Void 
	{
		this._username = name;
		trace(this.trigger);
		this.trigger.setUsername(this._username);
	}
	
	public function getUsername():String
	{
		return this._username;
	}
}