#!/bin/bash

echo "🚀 Setting up WrapMobile - Capacitor wrapper for Next.js localhost:3000"
echo "=================================================================="

# Check if yarn is installed
if ! command -v yarn &> /dev/null; then
    echo "❌ yarn is not installed. Please install yarn first."
    echo "   Run: npm install -g yarn"
    exit 1
fi

# Install dependencies
echo "📦 Installing Capacitor dependencies..."
yarn install

# Initialize Capacitor (if not already done)
if [ ! -f "capacitor.config.ts" ]; then
    echo "⚙️ Initializing Capacitor..."
    yarn cap init
fi

# Add platforms
echo "📱 Adding Android platform..."
yarn cap add android

echo "🍎 Adding iOS platform..."
yarn cap add ios

# Sync the project
echo "🔄 Syncing Capacitor project..."
yarn cap sync

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Make sure your Next.js app is running on localhost:3000"
echo "2. For Android development:"
echo "   - Install Android Studio"
echo "   - Run: yarn dev (for live reload)"
echo "   - Or: yarn open:android (to open in Android Studio)"
echo ""
echo "3. For iOS development (macOS only):"
echo "   - Install Xcode"
echo "   - Run: yarn dev:ios (for live reload)"
echo "   - Or: yarn open:ios (to open in Xcode)"
echo ""
echo "🔥 Happy coding!"
