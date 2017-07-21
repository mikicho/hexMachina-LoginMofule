package services.google;

import hex.log.Logger;
import hex.data.IParser;

/**
 * ...
 * @author Andrei Bunulu
 */
class LoginParser implements IParser<Dynamic>
{
	public function new() 
	{
		
	}
	
    // TODO: type this function
	public function parse(serializedContent:Dynamic, target:Dynamic = null):Dynamic 
	{
		return serializedContent.getBasicProfile().getName();
	}
}	