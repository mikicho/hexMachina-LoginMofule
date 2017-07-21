package js.views;

import modules.login.view.ILoginView;
import js.html.Element;
import modules.login.LoginModule;
import modules.login.services.ILoginService;

class GoogleLoginView implements ILoginView 
{
	public var _layout:Element;

	public function new( layout : Element, service:ILoginService ) 
	{
		this._layout = layout;
        this._layout.onclick = function () {
			trace("Login");
			new LoginModule({fromType:"modules.login.view.ILoginView", toValue:this, injectInto:true}, 
						    {fromType:"modules.login.services.ILoginService", toValue:service, injectInto:true}).initialize();
		};
	}
		
	public function setUsername(name:String):Void
	{
		js.Browser.document.getElementById("js-sign-in").textContent = name + " signed in with Google";
        //js.Browser.document.getElementById("js-disconnect").onclick = googleAuth.disconnect;
	}
}