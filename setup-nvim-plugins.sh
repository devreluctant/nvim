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

# Clone Tokyo Night theme
git clone https://github.com/folke/tokyonight.nvim.git

# Clone nvim-web-devicons (file icons, requires a Nerd Font)
echo "- nvim-web-devicons"
git clone https://github.com/nvim-tree/nvim-web-devicons.git

# Clone diffview.nvim
echo "- diffview.nvim"
git clone https://github.com/sindrets/diffview.nvim.git

# Clone avante.nvim and its dependencies
echo "- avante.nvim"
git clone https://github.com/yetone/avante.nvim.git
echo "- nui.nvim"
git clone https://github.com/MunifTanjim/nui.nvim.git
echo "- render-markdown.nvim"
git clone https://github.com/MeanderingProgrammer/render-markdown.nvim.git

# Install Nerd Font for icons (requires brew)
echo "Installing JetBrainsMono Nerd Font..."
brew install --cask font-jetbrains-mono-nerd-font

echo ""
echo "✓ All plugins installed successfully!"
echo "Location: $PACK_DIR"
echo ""
echo "Next steps:"
echo "1. Configure your init.lua and lua files"
echo "2. Set your terminal font to 'JetBrainsMono Nerd Font'"
echo "3. Install language servers:"
echo "   - Python: pip install pyright --break-system-packages"
echo "4. Restart Neovim"
