# matlab-filesystem-io

MATLAB functions to obtain the information from a file system

## Functions

- `getProjectDir(path)` - call the MATLAB built-in `dir` function but return the folder information in a structure array without the rows for  `.` and `..`.

- `jDir(dirpath)` - list the files and folders in a specific directory using  **java.io.File** (with supporting Asian characters), return the folder information in a structure array with fields: `name` and `isDir`.

   **Example output:**

   {% include picture.html img="matlab/matlab-jdir-listing-struct-o8.png" width="255" height="138" %}

- `jDir(dirpath, 'dir')` - list the folder in a specific directory

   **Example output:**

   ```plaintext
    '.git'
   ```

- `jDir(dirpath, 'file')` - list the files in a specific directory

   **Example output:**

   ```plaintext
    'LICENSE'
    'README.md'
   ```