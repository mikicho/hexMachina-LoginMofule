class Main {
    
    static function main() {
        #if js
        new Main();
		#end
    }

    function new() {
        var googleLoginService = new services.google.Login();
        var googleLoginView = new js.views.GoogleLoginView(js.Browser.document.getElementById("js-google-login"));
        var loginModule = new modules.login.LoginModule({fromType:"modules.login.view.ILoginView", toValue:googleLoginView, injectInto:true}, 
						    {fromType:"modules.login.services.ILoginService", toValue:googleLoginService, injectInto:true});
        loginModule.initialize();
    }
}
