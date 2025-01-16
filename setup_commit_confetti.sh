#!/bin/sh

# Check if Raycast is installed
if [ ! -d "/Applications/Raycast.app" ]; then
    echo "❌ Raycast is not installed. Please install Raycast first."
    echo "You can download it from: https://www.raycast.com"
    exit 1
fi

# Create global git hooks directory
echo "Creating global git hooks directory..."
mkdir -p ~/.git-hooks

# Create post-commit hook file
echo "Creating post-commit hook..."
cat > ~/.git-hooks/post-commit << 'EOF'
#!/bin/sh
open 'raycast://confetti'
EOF

# Make the post-commit hook executable
echo "Making post-commit hook executable..."
chmod +x ~/.git-hooks/post-commit

# Set global git hooks path
echo "Updating git global config..."
git config --global core.hooksPath ~/.git-hooks

echo "✨ Commit confetti setup complete! Your next commit will trigger confetti in Raycast ✨"

