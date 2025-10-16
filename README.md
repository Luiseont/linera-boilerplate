# Linera Back App: Ready to Develop

This project provides a ready-to-develop environment for building and copile Linera contracts using Docker.

## Features
- Pre-configured Rust toolchain with MUSL and WASM targets
- All required system dependencies for Linera
- Protocol Buffers (protoc) installed
- Ready for cross-compilation and service development

## Quick Start

### 1. Edit .env with your project name
```bash
PROJECT_NAME=MyApp
```

### 2. Run and build the containers
```bash
./start.sh -d --build
```
### 3. Start Developing
- Edit your Rust code in the project directory (mounted from your host)
- Use `cargo build` or `cargo run` as needed
- All dependencies for Linera development are pre-installed

### 4. Enter to container for execute commads of linera-sdk
```bash
docker compose exec dev bash
```

### 5. Stop the container wen the work is done. You can delete volumes with -v flag
```bash
./stop.sh || ./stop.sh -v 
```

## Notes
- Sometimes, you need set permission to start.sh and stop.sh. keep in mind
- For more information, see the official Linera documentation: https://github.com/linera-io/linera
