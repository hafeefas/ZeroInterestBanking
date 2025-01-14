#!/bin/bash

# Remove Storybook directories and files
rm -rf src/.storybook
rm -rf .storybook
rm -rf storybook-static

# Remove Storybook dependencies from package.json
bun uninstall \
  @storybook/react-native \
  @storybook/core-common \
  @storybook/core-server \
  @storybook/core-events \
  @storybook/react \
  @storybook/addon-ondevice-controls \
  @storybook/addon-ondevice-actions \
  @storybook/addon-actions \
  @storybook/addon-links \
  @storybook/addon-essentials \
  @storybook/addon-interactions \
  @storybook/addon-react-native-web \
  @storybook/builder-webpack5 \
  @storybook/manager-webpack5 \
  @storybook/testing-library

# Remove any stories files
find src -name "*.stories.tsx" -type f -delete
find src -name "*.stories.ts" -type f -delete
find src -name "*.stories.jsx" -type f -delete
find src -name "*.stories.js" -type f -delete

# Clean up any remaining cache
bun run nuke

# Reinstall dependencies
bun install

echo "Storybook has been completely removed from the project"
