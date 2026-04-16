#!/usr/bin/env bash
set -euo pipefail

# Detect the GPU vendor and choose the correct build/install path.
# Customize the commands inside each case block for your actual UEFI/installer workflows.

detect_gpu() {
  if command -v nvidia-smi >/dev/null 2>&1; then
    echo "nvidia"
  elif command -v rocm-smi >/dev/null 2>&1; then
    echo "amd"
  elif command -v lspci >/dev/null 2>&1 && lspci | grep -qi "intel.*vga"; then
    echo "intel"
  else
    echo "unknown"
  fi
}

GPU_VENDOR=$(detect_gpu)
echo "Detected GPU vendor: $GPU_VENDOR"

case "$GPU_VENDOR" in
  nvidia)
    echo "Using NVIDIA build/install path"
    # Example: configure CUDA, use an NVIDIA-specific build target, or install drivers
    export CUDA_HOME="/usr/local/cuda"
    export PATH="$CUDA_HOME/bin:$PATH"
    # ./build_efi_app.sh --with-cuda
    ;;

  amd)
    echo "Using AMD build/install path"
    # Example: configure ROCm, use an AMD-specific build target
    export ROCR_HOME="/opt/rocm"
    export PATH="$ROCR_HOME/bin:$PATH"
    # ./build_efi_app.sh --with-rocm
    ;;

  intel)
    echo "Using Intel GPU build/install path"
    # Example: choose Intel-specific runtime or package selection
    # ./build_efi_app.sh --with-intel
    ;;

  *)
    echo "No supported GPU detected. Using default build path"
    # ./build_efi_app.sh
    ;;
esac

# Build or package commands go here.
# Uncomment and update the commands below with your actual UEFI/installer workflow.

# echo "Building EFI application..."
# ./build_efi_app.sh

# echo "Creating bootable ISO..."
# ./create_bootable_iso.sh

# echo "Done."
