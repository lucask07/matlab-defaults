%get open Documents
openDocuments = matlab.desktop.editor.getAll;

%close them all (will prompt user to save unsaved files)
openDocuments.close;
