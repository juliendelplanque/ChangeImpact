I am an abstract class defining the UI of a change builder.

I mainly ask the user for the change he wants to apply and the entity on which he want to apply it.

My subclasses must define and initialize the CIBModelBrowser subclass instance I should use according to the kind of model I have to deal with.

This is done by overriding these methods:
- #initializeModelBrowserWidget
- #initializeModelBrowserPresenter
and by initializing #modelBrowser inst. variable.