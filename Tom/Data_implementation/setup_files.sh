#!/bin/bash


# Check if $CONDA_PREFIX is set
if [ -z "$CONDA_PREFIX" ]; then
  echo "Error: \$CONDA_PREFIX is not set. Please activate a Conda environment."
  exit 1
fi

# Defining target directories
TARGET_DIR="$CONDA_PREFIX/share/NNPDF/data/"
COMMONDATA_DIR="$TARGET_DIR/commondata"
SYSTYPE_DIR="$COMMONDATA_DIR/systypes"
FK_TABLE_DIR="$TARGET_DIR/theory_270/fastkernel"
SIMU_FAC_DIR="$TARGET_DIR/theory_270/simu_factors"
SM_K_FAC_DIR="$TARGET_DIR/theory_270/cfactor"

# Copy the contents of each folder in the current directory to $CONDA_PREFIX/share

if [ -d "old_commondata" ]; then
  echo "Found commondata directory. Copying files..."

  cp old_commondata/DATA_* "$COMMONDATA_DIR"
  cp old_commondata/PLOTTING* "$COMMONDATA_DIR"
  cp old_commondata/SYSTYPE_* "$SYSTYPE_DIR"
else
  echo "No commondata directory found. Skipping..."
fi


if [ -d "theory" ]; then
    echo "Found theory directory. Copying files..."

    cp theory/fastkernel/* "$FK_TABLE_DIR"
else
    echo "No theory directory found. Skipping..."
fi

if [ -d "theory/simu_files" ]; then
    echo "Found simu_files directory. Copying files..."

    cp theory/simu_files/* "$SIMU_FAC_DIR"
else
    echo "No simu_files directory found in theory. Skipping..."
fi

if [ -d "theory/cfac" ]; then
    echo "Found cfac directory. Copying files..."
    cp theory/cfac/* "$SM_K_FAC_DIR"
else
    echo "No cfac directory found in theory. Skipping..."
fi

echo "All datasets have been implemented successfully!"