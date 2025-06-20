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
echo "🔧 Installing core developer tools..."
brew install git
brew install make
brew install cmake
brew install gcc
brew install openjdk
brew install postgresql
brew install mongodb-community
brew install node
brew install go
brew install dotnet-sdk
brew install openjdk@11
brew install openjdk@17
breww install openjdk@21
brew install python

# Python packages
echo "🐍 Installing Python packages..."
pip install --upgrade pip
pip install django
pip install flask

# Rust (via rustup)
if ! command -v rustc &> /dev/null; then
    echo "🦀 Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
else
    echo "✅ Rust already installed."
fi

# VS Code
echo "💻 Installing Visual Studio Code..."
brew install --cask visual-studio-code

# MongoDB Compass (Optional GUI)
if ! command -v mongosh &> /dev/null; then
    echo "🗺️ Installing MongoDB Compass..."
    brew install --cask mongodb-compass 
else
    echo "✅ MongoDB Compass already installed."
fi

# React Setup (via npm)
echo "⚛️ Installing React CLI tools..."
npm install -g create-react-app

# Optional: Vue CLI (if you prefer Vue.js)
echo "🌐 Installing Vue CLI..."
npm install -g @vue/cli

# Optional: Vite (modern frontend build tool)
echo "⚡ Installing Vite..."
npm install -g vite

# Maven (Java build tool)
echo "☕ Installing Maven..."
brew install maven
# Gradle (Java build tool)
echo "☕ Installing Gradle..."
brew install gradle

# Clean up
echo "🧹 Cleaning up Homebrew..."
brew cleanup

echo "✅ Developer environment setup complete!"
echo "Installed: Git, Make, CMake, GCC, Java (OpenJDK), Node.js, Go, Rust, PostgreSQL, MongoDB, React CLI, Vite, VS Code."