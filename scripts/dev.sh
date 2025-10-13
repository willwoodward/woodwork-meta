#!/bin/bash

# Development script for woodwork project
# Starts all development environments
# Usage: ./dev.sh [--silent]

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Parse flags
SILENT=false
if [[ "$1" == "--silent" ]]; then
    SILENT=true
fi

# Cleanup function to kill all child processes
cleanup() {
    echo ""
    echo "Stopping services..."

    # Kill all processes in the process group
    pkill -P $$ 2>/dev/null

    # Also kill vite specifically to be sure
    pkill -f vite 2>/dev/null

    exit 0
}

# Trap Ctrl+C and clean up processes
trap cleanup INT TERM

echo "Starting development environments..."

# Start GUI client dev server
echo "Starting GUI client (Vite)..."
cd "$PROJECT_ROOT/gui/client"
if [ "$SILENT" = true ]; then
    npm run dev > /dev/null 2>&1 &
else
    npm run dev &
fi
CLIENT_PID=$!

# Start GUI server
echo "Starting GUI server (Python)..."
cd "$PROJECT_ROOT/gui/server"
source .venv/bin/activate
if [ "$SILENT" = true ]; then
    python server.py > /dev/null 2>&1 &
else
    python server.py &
fi
SERVER_PID=$!

echo ""
echo "Development environments started:"
echo "  - GUI Client PID: $CLIENT_PID"
echo "  - GUI Server PID: $SERVER_PID"
echo ""

# Open browser
echo "Opening browser..."
powershell.exe /c start http://localhost:5173

echo "Press Ctrl+C to stop all services"

# Wait for both processes
wait
