package js.views;

import modules.login.view.ILoginView;
import js.html.Element;
import hex.event.ITrigger;
import common.ILoginRequestedConnection;

class GoogleLoginView implements ILoginView 
{
	public var trigger( default, never ):ITrigger<ILoginRequestedConnection>;
	public var _layout:Element;

	public function new( layout : Element) 
	{
		this._layout = layout;
        this._layout.onclick = function () {
			this.trigger.onLoginRequested();
		};
	}
		
	public function setUsername(name:String):Void
	{
		trace("view");
		js.Browser.document.getElementById("js-sign-in").textContent = name + " signed in with Google";
        //js.Browser.document.getElementById("js-disconnect").onclick = googleAuth.disconnect;
	}
}