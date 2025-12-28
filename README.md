# flash-attention Windows wheel (Python 3.12)

This repo contains a prebuilt Windows wheel for flash-attention and a batch file used to build it.

## Files
- `flash_attn-2.8.3-cp312-cp312-win_amd64.whl`: prebuilt wheel
- `build_flash_attention.bat`: build script used

## Build instructions
See: https://huggingface.co/lldacing/flash-attention-windows-wheel

## Build settings used
- OS: Windows 11
- GPU: RTX 3070 (SM 86)
- Build time: a few hours on RTX 3070
- CUDA: 13.0 (CUDA toolkit path: `C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v13.0`)
- cuDNN include path: `C:\Program Files\NVIDIA\CUDNN\v8.3\include`
- Python: 3.12
- PyTorch: 2.9.1+cu130
- flash-attention: v2.8.3
- MSVC: Visual Studio 2019 Build Tools (v16.11)

## Compatibility
- Windows 10/11 x64
- Python 3.12
- PyTorch 2.9.1+cu130 (or compatible CUDA 13.0 build)
- NVIDIA GPU with SM 86 (Ampere) and CUDA 13.0 toolkit installed

## Install
```bat
C:\AddToPath\flashattention\venv\Scripts\python.exe -m pip install flash_attn-2.8.3-cp312-cp312-win_amd64.whl
```

## Build
Run the batch file from a Command Prompt:
```bat
build_flash_attention.bat
```
