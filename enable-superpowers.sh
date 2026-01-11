#!/bin/bash
#
# Enable Superpowers in current project
# Creates a symlink to the shared rules directory
#
# Usage: 
#   cd /path/to/your/project
#   ~/.cursor-rules/enable-superpowers.sh
#
# Or add an alias to your shell config:
#   alias superpowers='~/.cursor-rules/enable-superpowers.sh'
#

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

RULES_SOURCE="$HOME/.cursor-rules"
TARGET_DIR=".cursor/rules"

echo -e "${YELLOW}🦸 Enabling Superpowers for Cursor...${NC}"

# Check if we're in a project directory
if [ ! -d ".git" ] && [ ! -f "package.json" ] && [ ! -f "Cargo.toml" ] && [ ! -f "go.mod" ] && [ ! -f "requirements.txt" ] && [ ! -f "pyproject.toml" ]; then
    echo -e "${YELLOW}Warning: This doesn't look like a project root (no .git, package.json, etc.)${NC}"
    read -p "Continue anyway? (y/N) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Create .cursor directory if it doesn't exist
mkdir -p .cursor

# Check if rules already exist
if [ -L "$TARGET_DIR" ]; then
    echo -e "${GREEN}✓ Superpowers already enabled (symlink exists)${NC}"
    exit 0
elif [ -d "$TARGET_DIR" ]; then
    echo -e "${YELLOW}Found existing .cursor/rules/ directory${NC}"
    read -p "Replace with symlink to shared rules? Existing rules will be backed up. (y/N) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        mv "$TARGET_DIR" "${TARGET_DIR}.backup.$(date +%s)"
        echo -e "${GREEN}✓ Backed up existing rules${NC}"
    else
        exit 1
    fi
fi

# Create symlink
ln -s "$RULES_SOURCE" "$TARGET_DIR"

echo -e "${GREEN}✓ Superpowers enabled!${NC}"
echo ""
echo "Rules linked: $TARGET_DIR -> $RULES_SOURCE"
echo ""
echo -e "${YELLOW}Tip:${NC} Reload Cursor window (Cmd+Shift+P → 'Reload Window')"
