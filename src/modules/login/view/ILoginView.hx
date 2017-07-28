package modules.login.view;

import common.ILoginConnection;
import common.ILoginRequestedConnection;
import hex.di.IInjectorContainer;
import hex.event.ITriggerOwner;
import hex.event.ITrigger;

interface ILoginView extends IInjectorContainer extends ILoginConnection extends ITriggerOwner  {
    public var trigger( default, never ):ITrigger<ILoginRequestedConnection>;
}