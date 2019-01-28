# StreamDeckEmulator

A simple emulator for the Stream Deck Application to allow plugin developers to test their plugins. The emulator supports Windows and macOS.

## Requirements

- NodeJs / Npm
- Docker, if running the docker container.

## Getting Started

With or without docker you will need to perform the following actions.

- Edit config.js with the path to your plugin's source.
- Update winexe / osxexe with the name of your plugin.

### Without Docker

- Run

```auto~
npm install
```

- Start the emulator by running 

```auto~
npm start
```

### With Docker

You have two options with the docker container.

1. Copy the manifest.json into the emulator directory and update the emulator config.json path for the manifest to "/app"

-OR-

1. Mount the local directory of your plugin in the container and update emulator config.json path for the manifest to the mount point within the container. Using this option changes the run command for docker.

---

- Build the docker container.

```auto~
docker build -t sd-emulator .
```

- Run the container, using config option 1

```auto~
docker run -t -p 3000:3000 sd-emulator
```

- Run the container, using configu option 2

```auto~
docker run -it -v ~/Projects/StreamDeckToolkit/src/SamplePlugin:/app/SamplePlugin -p 3000:3000 sd-emulator
```

The -t parameter to docker run enables an interactive tty.