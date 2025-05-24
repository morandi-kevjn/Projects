#!/bin/bash

echo "🚀 Starting macOS Developer Environment Setup..."

# Check for Homebrew
if ! command -v brew &> /dev/null; then
    echo "🔧 Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "✅ Homebrew already installed."
fi

echo "🔄 Updating Homebrew..."
brew update

# Core Tools
brew install git
brew install make
brew install cmake
brew install gcc
brew install openjdk
brew install postgresql
brew install mongodb-community
brew install node
brew install go

# Rust (via rustup)
if ! command -v rustc &> /dev/null; then
    echo "🦀 Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
else
    echo "✅ Rust already installed."
fi

# VS Code
brew install --cask visual-studio-code

# MongoDB Compass (Optional GUI)
brew install --cask mongodb-compass

# React Setup (via npm)
echo "⚛️ Installing React CLI tools..."
npm install -g create-react-app

# Optional: Vite (modern frontend build tool)
npm install -g vite

# Clean up
brew cleanup

echo "✅ Developer environment setup complete!"
echo "Installed: Git, Make, CMake, GCC, Java (OpenJDK), Node.js, Go, Rust, PostgreSQL, MongoDB, React CLI, Vite, VS Code."