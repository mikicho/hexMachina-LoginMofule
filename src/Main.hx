class Main {
    static function main() {
        #if js
        new Main();
		#end
    }

    function new() {
        var googleLoginService = new services.google.Login();
        var googleLoginView = new js.views.GoogleLoginView(js.Browser.document.getElementById("js-google-login"), googleLoginService);
    }
}
