# sourcemod-async-64bit
Fast HTTP/S client for Sourcemod https://forums.alliedmods.net/showthread.php?t=237812

Uses 1 seperate thread to handle all requests with an event loop which should be safer and more reliable than using 1 thread per request.

This version has been modified to compile for the Linux x64 build of Team Fortress 2. It is slightly modified from the original version located here: https://github.com/bottiger1/sourcemod-async
This version *still contains* a prepackaged version of **libuv-1.33.1** but other build requirements are now handled by docker.

I can potentially modify it as needed to work for other games, but I would recommend grabbing the latest reelease from the original version otherwise.

## Key Differences
- Reorganized to be compiled with docker
- Produces an ***x64*** compatible linux SO extension file

## Installation
Download the [latest release](https://github.com/SouthernCrossGaming/voicemanager/releases/latest/download/voicemanager.zip), unzip and copy to your `addons` directory.

## Building

### Build Extension for Linux

*Requires Docker (with docker compose) using **Linux** containers
```
> .\build_ext.bat
```
```
$ ./build_ext.sh
```

# Credits
- [bottiger](https://github.com/bottiger1/) (Original extension code)
- [Fraeven](https://fraeven.dev) (I borrowed the docker scripts from VoiceManager)
- [Rowedahelicon](https://rowdythecrux.dev) (X64 conversion, Docker organization)
  
