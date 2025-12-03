#!/bin/bash

set -e  # Exit on error

NVIM_CONFIG="$HOME/.config/nvim"
PACK_DIR="$NVIM_CONFIG/pack/plugins/start"

echo "Setting up Neovim plugins..."

# Create necessary directories
echo "Creating directories..."
mkdir -p "$PACK_DIR"

# Navigate to the pack directory
cd "$PACK_DIR"

echo "Cloning plugins..."

# Clone rustaceanvim
echo "- rustaceanvim"
git clone https://github.com/mrcjkb/rustaceanvim.git

# Clone plenary (required by telescope)
echo "- plenary.nvim"
git clone https://github.com/nvim-lua/plenary.nvim.git

# Clone telescope
echo "- telescope.nvim"
git clone https://github.com/nvim-telescope/telescope.nvim.git

# Clone telescope file browser
echo "- telescope-file-browser.nvim"
git clone https://github.com/nvim-telescope/telescope-file-browser.nvim.git

# Clone nvim-cmp and its sources for completion
echo "- nvim-cmp"
git clone https://github.com/hrsh7th/nvim-cmp.git
echo "- cmp-nvim-lsp"
git clone https://github.com/hrsh7th/cmp-nvim-lsp.git
echo "- cmp-buffer"
git clone https://github.com/hrsh7th/cmp-buffer.git
echo "- cmp-path"
git clone https://github.com/hrsh7th/cmp-path.git

# Clone LuaSnip (required for nvim-cmp)
echo "- LuaSnip"
git clone https://github.com/L3MON4D3/LuaSnip.git
echo "- cmp_luasnip"
git clone https://github.com/saadparwaiz1/cmp_luasnip.git

echo ""
echo "✓ All plugins installed successfully!"
echo "Location: $PACK_DIR"
