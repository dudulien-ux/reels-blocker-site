#!/bin/bash

# Reels Blocker Auto-Installer for Mac

echo "🎉 Reels Blocker Installer"
echo "=========================="
echo ""

# Check if Chrome is installed
if ! [ -d "/Applications/Google Chrome.app" ]; then
    echo "❌ Chrome is not installed. Please install Chrome first."
    exit 1
fi

# Ask user for downloads folder
DOWNLOADS=$(cd ~/Downloads && pwd)
EXTENSION_ZIP="$DOWNLOADS/reels-blocker-extension.zip"

echo "1️⃣  Checking for extension file..."

if [ ! -f "$EXTENSION_ZIP" ]; then
    echo "📥 Downloading extension..."
    curl -L -o "$EXTENSION_ZIP" "https://drive.google.com/uc?export=download&id=YOUR_FILE_ID" 2>/dev/null || {
        echo "❌ Download failed. Please download from: https://dudulien-ux.github.io/reels-blocker-site/"
        exit 1
    }
fi

echo "2️⃣  Extracting extension..."
EXTENSION_DIR="$DOWNLOADS/reels-blocker-extension"
rm -rf "$EXTENSION_DIR"
unzip -q "$EXTENSION_ZIP" -d "$EXTENSION_DIR"

echo "3️⃣  Opening Chrome extensions page..."
sleep 1

# Open Chrome and navigate to extensions page
open -a "Google Chrome" "chrome://extensions"

sleep 2

echo ""
echo "✅ Almost done!"
echo ""
echo "4️⃣  In Chrome, follow these steps:"
echo "   • Look for the toggle in the top right and turn ON 'Developer mode'"
echo "   • Click the 'Load unpacked' button that appears"
echo "   • Select this folder: $EXTENSION_DIR"
echo ""
echo "That's it! 🎉"
echo ""
