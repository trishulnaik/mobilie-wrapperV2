import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.wrapmobile.app',
  appName: 'WrapMobile',
  webDir: 'www',
  server: {
    url: 'https://gameplan-nu.vercel.app/',
    cleartext: true
  },
  android: {
    allowMixedContent: true
  },
  ios: {
    contentInset: 'automatic'
  }
};

export default config;
