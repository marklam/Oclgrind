cmake -D "LLVM_DIR=C:\tools\llvm-11.1.0-windows-amd64-msvc15-msvcrt\lib\cmake\llvm" -D "CLANG_ROOT=c:\tools\clang-11.1.0-windows-amd64-msvc15-msvcrt" 
msbuild oclgrind.sln /p:Configuration=Release /p:Platform=x64  
