
# csc -define:SAMPLE /target:library -out:sample.dll /noconfig /nostdlib /r:$env:WASM_SDK/wasm-bcl/wasm/mscorlib.dll /r:$env:WASM_SDK/wasm-bcl/wasm/System.dll /r:$env:WASM_SDK/wasm-bcl/wasm/System.Core.dll /r:$env:WASM_SDK/wasm-bcl/wasm/Facades/netstandard.dll /r:$env:WASM_SDK/wasm-bcl/wasm/System.Net.Http.dll /r:$env:WASM_SDK/framework/WebAssembly.Bindings.dll /r:$env:WASM_SDK/framework/System.Net.Http.WebAssemblyHttpHandler.dll ./MyLibrary/Foo.cs


# mono $env:WASM_SDK/packager.exe --copy=always --out=./publish --asset=./sample.html --asset=server.py sample.dll


dotnet build --configuration Release -o ./output ./TestingMonowasm/TestingMonowasm.csproj
cd ./output
mono $env:WASM_SDK/packager.exe --copy=always --out=./publish --asset=../server.py --asset=../index.html TestingMonowasm.dll
cd ..
