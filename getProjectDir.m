function listdata = getProjectDir(projectPATH)

% check the existance of the directory
isFolder = exist(projectPATH, 'dir') ;

% obtain the file list
if isFolder == 7
    listdata = dir(projectPATH);
else
    error(strcat(projectPATH, ' : no such directory. (Error 101)'))
end

% remove the items (i.e. '.', '..', and 'directory') that are not under
% this directory
for i=1:3
    if strncmp(listdata(1).name , '.', 1)
        listdata(1) = [];
    end
end

