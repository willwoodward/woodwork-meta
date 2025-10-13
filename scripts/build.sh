#!/bin/bash
set -e

# Build script for woodwork project
# Runs all build commands and copies artifacts to appropriate locations

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

echo "Building woodwork project..."

# Build GUI client
echo ""
echo "Building GUI client..."
cd "$PROJECT_ROOT/gui/client"
npm run build

# Copy GUI client artifacts to engine (adjust path as needed)
echo ""
echo "Copying GUI client artifacts..."
# Determine target directory - adjust this path based on where engine/woodwork/gui is
TARGET_DIR="$PROJECT_ROOT/engine/woodwork/gui/dist"
mkdir -p "$TARGET_DIR"
rm -rf "$TARGET_DIR"
cp -r dist "$TARGET_DIR"

echo ""
echo "Build complete!"
echo "  - GUI client built: gui/client/dist"
echo "  - Artifacts copied to: $TARGET_DIR"
