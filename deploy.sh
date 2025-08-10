#!/bin/bash

echo "Preparing AI Design System for cPanel deployment..."

# Check if dist folder exists
if [ ! -d "dist" ]; then
    echo "Error: dist folder not found. Run 'npm run build' first."
    exit 1
fi

# Create deployment package
echo "Creating deployment package..."
mkdir -p deployment
cp -r dist/* deployment/

# Show what will be uploaded
echo ""
echo "Files ready for cPanel upload:"
echo "=================================="
find deployment -type f | sort

echo ""
echo "File sizes:"
echo "=============="
du -h deployment/* deployment/assets/*

echo ""
echo "Deployment package ready in 'deployment/' folder!"
echo ""
echo "Next steps:"
echo "1. Upload the contents of 'deployment/' to your cPanel public_html directory"
echo "2. Ensure file permissions are set correctly (644 for files, 755 for folders)"
echo "3. Test your deployed application"
echo ""
echo "See DEPLOYMENT.md for detailed instructions"
