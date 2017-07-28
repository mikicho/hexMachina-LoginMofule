package modules.login.model;

import hex.event.ITriggerOwner;
import hex.event.ITrigger;
import common.ILoginConnection;


interface ILoginModel extends ITriggerOwner extends ILoginModelRO 
{
	public var trigger( default, never ):ITrigger<ILoginConnection>;
	function setUsername(name:String):Void;
}