#!/bin/bash

# Exit immediately on error
set -e

echo "🔧 Starting Kubernetes setup..."

# Fix PATH for macOS + Homebrew
export PATH="/usr/local/bin:/usr/bin:/bin:/opt/homebrew/bin:$PATH"

# Check for kubectl
if ! command -v kubectl &> /dev/null; then
  echo "📦 Installing kubectl..."
  brew install kubectl
fi

# Check for minikube
if ! command -v minikube &> /dev/null; then
  echo "📦 Installing minikube..."
  brew install minikube
fi

# Ensure Docker Desktop is running
if ! pgrep -f "Docker Desktop" > /dev/null; then
  echo "⚠️ Please start Docker Desktop manually before continuing."
  exit 1
fi

# Start minikube with Docker driver
echo "🚀 Starting minikube..."
minikube start --driver=docker

# Enable zsh kubectl autocompletion
if ! grep -q "kubectl completion zsh" ~/.zshrc; then
  echo "🔁 Setting up kubectl autocompletion in .zshrc"
  echo "autoload -Uz compinit && compinit" >> ~/.zshrc
  echo "source <(kubectl completion zsh)" >> ~/.zshrc
fi

# Deploy a test NGINX demo app
echo "🚀 Deploying hello-node..."
kubectl delete service hello-node --ignore-not-found
kubectl delete deployment hello-node --ignore-not-found

kubectl create deployment hello-node --image=nginxdemos/hello
kubectl expose deployment hello-node --type=LoadBalancer --port=80

echo "🌐 Opening hello-node service..."
minikube service hello-node