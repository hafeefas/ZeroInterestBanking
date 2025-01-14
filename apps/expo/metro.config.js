const { getDefaultConfig } = require('expo/metro-config');

/** @type {import('expo/metro-config').MetroConfig} */
const config = getDefaultConfig(__dirname, {
  isCSSEnabled: false,
});

config.transformer.minifierConfig = {
  compress: {
    drop_console: true,
  },
};

module.exports = config;