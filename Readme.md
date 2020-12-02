# How to run

- Download [monowasm](https://jenkins.mono-project.com/job/test-mono-mainline-wasm/label=ubuntu-1804-amd64/lastSuccessfulBuild/Azure/) from build server.
- Install mono (e.g. using choco `choco install mono`)
- Unzip it
- Set environment variable `WASM_SDK` to point to the unzipped folder
- run `wasm-compile.ps1`
- navigate to `output/publish` and run `python server.py` using python (install python `choco install python --version=3.6.7`)
