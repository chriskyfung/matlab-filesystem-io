function listing = jDir(path, varargin)

mode = 'all';

if nargin == 2
    mode = lower(varargin{1});
end

jFile = java.io.File(path); %java file object
jPaths = jFile.listFiles; %java.io.File objects
jNames = jFile.list; %java.lang.String objects
isFolder = arrayfun(@isDirectory,jPaths); %boolean
switch mode
    case 'file'
        listing = cellstr(char(jNames(~isFolder))); %cellstr File_Names_Only 
    case 'dir'
        listing = cellstr(char(jNames(isFolder))); %cellstr Folder_Names_Only
    otherwise
        listing = struct('name',  cellstr(char(jNames)), 'isDir', num2cell(isFolder));  
end


