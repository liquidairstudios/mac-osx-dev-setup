#!/bin/bash
# Author: Svetlin Ralchev <svett@ralch.com>
# Github repository: http://github.com/svett/mac-osx-dev-setup

cp ../bin/NuGet.exe /usr/local/bin/NuGet.exe
cp ../bin/Microsoft.Build.dll /usr/local/bin/Microsoft.Build.dll
cp ../settings/nuget /usr/local/bin/nuget

chmod 755 /usr/local/bin/nuget

# Because bootstrapper and NuGet itself use HTTPS we need to import trusted root certificates from Mozilla’s LXR into Mono’s certificate store:
mozroots --import --sync

