#!/bin/bash
# Small-server PM2 startup script
# Generated 2026-04-06

echo "=== Starting PM2 services on small-server ==="

# Services with ecosystem configs
echo "[1/6] Starting ecosystem-based services..."
pm2 start /opt/egpk/ecosystem.config.js
pm2 start /opt/egpk-stream/ecosystem.config.js
pm2 start /opt/prism/ecosystem.config.cjs
pm2 start /opt/dispatch/ecosystem.config.cjs
pm2 start /opt/signal/ecosystem.config.cjs
pm2 start /opt/gridpulse/ecosystem.config.cjs
pm2 start /opt/resilience/ecosystem.config.cjs
pm2 start /root/broadcast-studio/ecosystem.config.js
pm2 start /opt/ayrweather/ecosystem.config.cjs
pm2 start /opt/ayrtraffic/ecosystem.config.js
pm2 start /opt/ayrnews/ecosystem.config.cjs
pm2 start /opt/kyle-rise-dashboard/ecosystem.config.cjs

# Manual services
echo "[2/6] Starting sentinel..."
cd /root/sentinel-shopwatch && pm2 start npm --name sentinel -- start

echo "[3/6] Starting skynet-signage..."
cd /root/skynet-signage && pm2 start npm --name skynet-signage -- start

echo "[4/6] Starting train-tracker..."
cd /opt/train-tracker && pm2 start npm --name train-tracker -- start

echo "[5/6] Starting fuel-tracker..."
cd /opt/fuel-tracker && pm2 start npm --name fuel-tracker -- start

echo "[6/6] Starting ayrshire-hub..."
pm2 start /opt/ayrshire-hub/server.js --name ayrshire-hub

# Save PM2 state
echo "=== Saving PM2 process list ==="
pm2 save

echo "=== Done ==="
pm2 list
