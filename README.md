# WrapMobile 📱

A mobile wrapper for your Next.js localhost:3000 project using Capacitor. This allows you to run your Next.js development server inside native Android and iOS apps.

## Features

- 🚀 Live reload development with your Next.js app
- 📱 Native Android support
- 🍎 Native iOS support
- 🔄 Automatic connection testing
- ⚡ Fast development workflow

## Prerequisites

- Node.js and Yarn installed
- Your Next.js project running on `localhost:3000`
- For Android: Android Studio
- For iOS: Xcode (macOS only)

## Quick Start

1. **Run the setup script:**
   ```bash
   ./setup.sh
   ```

2. **Start your Next.js development server:**
   ```bash
   # In your Next.js project directory
   yarn dev
   ```

3. **Run the mobile app:**
   
   **For Android:**
   ```bash
   yarn dev
   # or open in Android Studio
   yarn open:android
   ```
   
   **For iOS:**
   ```bash
   yarn dev:ios
   # or open in Xcode
   yarn open:ios
   ```

## Manual Setup

If you prefer manual setup:

1. **Install dependencies:**
   ```bash
   yarn install
   yarn add -D typescript
   ```

2. **Add platforms:**
   ```bash
   yarn cap add android
   yarn cap add ios
   ```

3. **Sync the project:**
   ```bash
   yarn cap sync
   ```

## Available Scripts

- `yarn dev` - Run Android app with live reload
- `yarn dev:ios` - Run iOS app with live reload
- `yarn build` - Build for all platforms
- `yarn build:android` - Build for Android only
- `yarn build:ios` - Build for iOS only
- `yarn sync` - Sync Capacitor project
- `yarn open:android` - Open project in Android Studio
- `yarn open:ios` - Open project in Xcode

## Configuration

The app is configured to connect to `localhost:3000` by default. You can modify this in `capacitor.config.ts`:

```typescript
server: {
  url: 'http://localhost:3000',
  cleartext: true
}
```

## Troubleshooting

### Connection Issues

If the app can't connect to localhost:3000:

1. Make sure your Next.js app is running
2. Check that it's accessible at `http://localhost:3000`
3. For Android emulator, you might need to use `10.0.2.2:3000` instead of `localhost:3000`

### Android Development

1. Install Android Studio
2. Set up Android SDK
3. Create an Android Virtual Device (AVD) or connect a physical device
4. Enable Developer Options and USB Debugging on physical devices

### iOS Development

1. Install Xcode (macOS only)
2. Set up iOS Simulator or connect a physical device
3. For physical devices, you'll need an Apple Developer account

## Project Structure

```
wrapMobile/
├── capacitor.config.ts    # Capacitor configuration
├── package.json          # Dependencies and scripts
├── www/                  # Web assets
│   └── index.html       # Loading page with connection test
├── android/             # Android platform (generated)
├── ios/                # iOS platform (generated)
└── setup.sh            # Automated setup script
```

## Development Workflow

1. Start your Next.js development server
2. Run `yarn dev` (Android) or `yarn dev:ios` (iOS)
3. The app will automatically connect to your localhost:3000
4. Any changes in your Next.js app will be reflected in the mobile app
5. Use Chrome DevTools to debug the web content

## Building for Production

For production builds, you'll need to:

1. Build your Next.js app and deploy it to a public URL
2. Update `capacitor.config.ts` to point to your production URL
3. Run `yarn build:android` or `yarn build:ios`
4. Follow platform-specific deployment guides

## License

MIT
