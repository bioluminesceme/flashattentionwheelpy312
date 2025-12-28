# Build instructions

This repo includes `build_flash_attention.bat` to build the wheel. You can edit the
settings at the top of the batch file to match your system.

You still need the flash-attention source repo to build from source. The batch
file is intended to be copied into (and run from) the flash-attention repo root.

## Settings to change
- `CUDA_HOME`: Path to your CUDA toolkit.
- `FLASH_ATTN_CUDA_ARCHS`: GPU architecture (e.g. `86` for RTX 3070).
- `MAX_JOBS`: Parallel build jobs (lower if you run out of RAM).

Optional (leave unless you know you need to change them):
- `DISTUTILS_USE_SDK`, `MSSdk`: Use MSVC from the VS developer environment.
- `FLASH_ATTENTION_FORCE_BUILD`, `FLASH_ATTENTION_SKIP_CUDA_BUILD`: Build controls.

## Build
Run the batch file from a Command Prompt:
```bat
build_flash_attention.bat
```

## Requirements
- Visual Studio Build Tools (VS 2019/2022) with C++ build tools
- CUDA toolkit installed
- Python 3.12 + PyTorch build that matches your CUDA toolkit
