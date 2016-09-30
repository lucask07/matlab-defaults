%save state
openDocuments = matlab.desktop.editor.getAll;
filenames = {openDocuments.Filename};
%remove Untitled files
filenames(strncmp(filenames,'Untitled',8)) = [];
save filenames filenames

%close them all (will prompt user to save unsaved files)
openDocuments.close;
