import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: "10.0.0.190",
    port: 3000,
  },
  preview: {
    host: "10.0.0.190",
    port: 3000,
  },
});
