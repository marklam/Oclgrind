cmake -D "LLVM_DIR=C:\tools\llvm-11.1.0-windows-amd64-msvc15-msvcrt\lib\cmake\llvm" -D "CLANG_ROOT=c:\tools\clang-11.1.0-windows-amd64-msvc15-msvcrt"  -D "CMAKE_INSTALL_PREFIX=C:\Program Files\Oclgrind"
msbuild oclgrind.sln /p:Configuration=Release /p:Platform=x64 /t:Rebuild
REM didn't work first time ?!
msbuild oclgrind.sln /p:Configuration=Release /p:Platform=x64
REM (as administrator)
msbuild /p:Configuration=Release /p:Platform=x64 INSTALL.vcxproj
regedit /S x64only.reg
