import { Root } from "@mobile/root";
import React from "react";

export function RootWithStorybook() {
  const context = require.context("./app");
  return <Root context={context} />;
}
