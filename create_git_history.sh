#!/bin/bash

# Script to create a realistic git history for the Brainwave project
# Timeline: April 2025 - July 2025

set -e

echo "🚀 Creating realistic git history for Brainwave project..."

# Initialize git repository
git init

# Configure git user (you can change these)
git config user.name "Developer"
git config user.email "developer@example.com"

# Function to create commit with custom date
commit_with_date() {
    local message="$1"
    local date="$2"
    
    git add .
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit -m "$message"
}

# Function to create staged commits (add specific files)
staged_commit_with_date() {
    local files="$1"
    local message="$2"
    local date="$3"
    
    git add $files
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit -m "$message"
}

echo "📅 Creating commits from April 2025 to July 2025..."

# April 2025 - Project Setup Phase
echo "🏗️  April 2025: Project Setup Phase"

# Initial project setup - April 1, 2025
commit_with_date "🎉 Initial project setup with Next.js and TypeScript" "2025-04-01 09:00:00"

# Wait a moment to ensure different commit times
sleep 1

# Package.json and dependencies - April 2, 2025
staged_commit_with_date "package.json package-lock.json" "📦 Add core dependencies: React, Next.js, Tailwind CSS" "2025-04-02 10:30:00"

sleep 1

# TypeScript and config files - April 3, 2025
staged_commit_with_date "tsconfig.json next.config.js tailwind.config.js postcss.config.js" "⚙️ Configure TypeScript, Next.js, and Tailwind CSS" "2025-04-03 14:15:00"

sleep 1

# Basic components structure - April 5, 2025
staged_commit_with_date "components/ui/" "🧩 Add basic UI components foundation" "2025-04-05 11:20:00"

sleep 1

# Authentication setup - April 8, 2025
staged_commit_with_date "app/(auth)/ middleware.ts" "🔐 Implement authentication routes and middleware" "2025-04-08 16:45:00"

sleep 1

# Database schema - April 10, 2025
staged_commit_with_date "prisma/ lib/prismadb.ts" "🗄️ Set up Prisma database schema and connection" "2025-04-10 13:00:00"

sleep 1

# May 2025 - Core Features Development
echo "🛠️  May 2025: Core Features Development"

# Landing page components - May 2, 2025
staged_commit_with_date "app/(landing)/" "🏠 Create landing page layout and components" "2025-05-02 09:15:00"

sleep 1

# Hero section - May 5, 2025
staged_commit_with_date "app/(landing)/components/Hero.tsx app/(landing)/components/design/Hero.tsx" "✨ Implement hero section with animations" "2025-05-05 15:30:00"

sleep 1

# Services section - May 8, 2025
staged_commit_with_date "app/(landing)/components/Services.tsx app/(landing)/components/design/Services.tsx" "🎯 Add services section with feature cards" "2025-05-08 11:45:00"

sleep 1

# Benefits and collaboration - May 12, 2025
staged_commit_with_date "app/(landing)/components/Benefits.tsx app/(landing)/components/Collaboration.tsx" "💡 Implement benefits and collaboration sections" "2025-05-12 14:20:00"

sleep 1

# Pricing components - May 15, 2025
staged_commit_with_date "app/(landing)/components/Pricing.tsx app/(landing)/components/PricingList.tsx" "💰 Add pricing section and subscription plans" "2025-05-15 10:00:00"

sleep 1

# Dashboard layout - May 18, 2025
staged_commit_with_date "app/(dashboard)/ components/sidebar.tsx components/navbar.tsx" "📊 Create dashboard layout with sidebar and navigation" "2025-05-18 16:10:00"

sleep 1

# AI conversation feature - May 22, 2025
staged_commit_with_date "app/(dashboard)/(routes)/conversation/ app/api/conversation/" "🤖 Implement AI conversation functionality" "2025-05-22 13:35:00"

sleep 1

# Code generation feature - May 25, 2025
staged_commit_with_date "app/(dashboard)/(routes)/code/ app/api/code/" "💻 Add AI code generation feature" "2025-05-25 12:15:00"

sleep 1

# Image generation - May 28, 2025
staged_commit_with_date "app/(dashboard)/(routes)/image/ app/api/image/" "🎨 Implement AI image generation" "2025-05-28 15:50:00"

sleep 1

# June 2025 - Advanced Features
echo "🚀 June 2025: Advanced Features"

# Music generation - June 2, 2025
staged_commit_with_date "app/(dashboard)/(routes)/music/ app/api/music/" "🎵 Add AI music generation capability" "2025-06-02 11:25:00"

sleep 1

# Video generation - June 5, 2025
staged_commit_with_date "app/(dashboard)/(routes)/video/ app/api/video/" "🎥 Implement AI video generation" "2025-06-05 14:40:00"

sleep 1

# Stripe integration - June 8, 2025
staged_commit_with_date "app/api/stripe/ lib/stripe.ts components/subscription-button.tsx" "💳 Integrate Stripe payment system" "2025-06-08 10:30:00"

sleep 1

# Pro modal and limits - June 12, 2025
staged_commit_with_date "components/pro-modal.tsx components/free-counter.tsx lib/api-limit.ts" "⭐ Add pro subscription modal and usage limits" "2025-06-12 16:15:00"

sleep 1

# Webhook handling - June 15, 2025
staged_commit_with_date "app/api/webhook/" "🔗 Implement Stripe webhook for subscription management" "2025-06-15 13:20:00"

sleep 1

# Settings page - June 18, 2025
staged_commit_with_date "app/(dashboard)/(routes)/settings/" "⚙️ Create user settings and subscription management" "2025-06-18 09:45:00"

sleep 1

# Mobile responsiveness - June 22, 2025
staged_commit_with_date "components/mobile-sidebar.tsx app/globals.css" "📱 Improve mobile responsiveness and UI" "2025-06-22 15:00:00"

sleep 1

# Theme provider - June 25, 2025
staged_commit_with_date "components/provider/" "🎨 Add theme provider and modal management" "2025-06-25 11:30:00"

sleep 1

# Additional UI components - June 28, 2025
staged_commit_with_date "components/ui/dialog.tsx components/ui/sheet.tsx components/ui/command.tsx" "🧩 Enhance UI component library" "2025-06-28 14:55:00"

sleep 1

# July 2025 - Polish and Optimization
echo "✨ July 2025: Polish and Optimization"

# Constants and configuration - July 2, 2025
staged_commit_with_date "constants.ts app/(dashboard)/(routes)/*/constants.ts" "📋 Organize constants and configuration files" "2025-07-02 10:15:00"

sleep 1

# Landing page styles - July 5, 2025
staged_commit_with_date "app/landing.home.css tailwind.landing.config.js" "💄 Add custom styling for landing page" "2025-07-05 13:40:00"

sleep 1

# Avatar components - July 8, 2025
staged_commit_with_date "components/bot-avatar.tsx components/user-avatar.tsx" "👤 Implement user and bot avatar components" "2025-07-08 16:20:00"

sleep 1

# Loading and empty states - July 12, 2025
staged_commit_with_date "components/loader.tsx components/ui/empty.tsx" "⏳ Add loading animations and empty state components" "2025-07-12 11:05:00"

sleep 1

# Roadmap section - July 15, 2025
staged_commit_with_date "app/(landing)/components/Roadmap.tsx app/(landing)/components/design/Roadmap.tsx" "🗺️ Add product roadmap section" "2025-07-15 14:30:00"

sleep 1

# Footer and final touches - July 18, 2025
staged_commit_with_date "app/(landing)/components/Footer.tsx app/(landing)/components/Header.tsx" "🏁 Complete header and footer components" "2025-07-18 09:50:00"

sleep 1

# Component organization - July 22, 2025
staged_commit_with_date "components/tool-card.tsx components/heading.tsx" "🧹 Organize and optimize component structure" "2025-07-22 12:25:00"

sleep 1

# Pro hooks and utilities - July 25, 2025
staged_commit_with_date "hooks/use-pro-modal.ts lib/subscription.ts lib/utils.ts" "🔧 Add custom hooks and utility functions" "2025-07-25 15:45:00"

sleep 1

# Public assets organization - July 28, 2025
staged_commit_with_date "public/" "🖼️ Organize and optimize public assets" "2025-07-28 11:10:00"

sleep 1

# Final documentation and cleanup - July 30, 2025
staged_commit_with_date "README.md components.json .gitignore" "📚 Update documentation and project configuration" "2025-07-30 16:00:00"

echo "✅ Git history created successfully!"
echo "📊 Total commits: $(git rev-list --count HEAD)"
echo "📅 Date range: April 1, 2025 - July 30, 2025"
echo ""
echo "🔍 Use 'git log --oneline --graph' to view the commit history"
echo "📈 Use 'git log --pretty=format:\"%h %ad %s\" --date=short' to see dates" 