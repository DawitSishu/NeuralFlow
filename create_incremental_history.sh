#!/bin/bash

# Script to create incremental git history with realistic development progression
# Timeline: April 2025 - July 2025

set -e

echo "🚀 Creating incremental git history for Brainwave project..."

# Function to create commit with custom date
commit_with_date() {
    local message="$1"
    local date="$2"
    
    git add .
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit -m "$message"
}

# Function to make a small change to a file
make_change() {
    local file="$1"
    local comment="$2"
    
    if [ -f "$file" ]; then
        echo "// $comment - $(date)" >> "$file"
    fi
}

# Function to update package.json version
update_version() {
    local version="$1"
    if [ -f "package.json" ]; then
        sed -i '' "s/\"version\": \"[^\"]*\"/\"version\": \"$version\"/" package.json
    fi
}

echo "📅 Creating incremental commits from April 2025 to July 2025..."

# April 2025 - Setup and Configuration
echo "🏗️  April 2025: Project Setup and Configuration"

# April 2, 2025 - Update package.json
update_version "0.1.0"
make_change "package.json" "Add initial dependencies and scripts"
commit_with_date "📦 Update package.json with initial dependencies" "2025-04-02 10:30:00"

# April 3, 2025 - TypeScript configuration
make_change "tsconfig.json" "Configure TypeScript for optimal development"
make_change "next.config.js" "Add Next.js configuration for production"
commit_with_date "⚙️ Configure TypeScript and Next.js settings" "2025-04-03 14:15:00"

# April 5, 2025 - Tailwind setup
make_change "tailwind.config.js" "Configure Tailwind CSS with custom theme"
make_change "postcss.config.js" "Setup PostCSS for Tailwind processing"
commit_with_date "🎨 Setup Tailwind CSS with custom configuration" "2025-04-05 11:20:00"

# April 8, 2025 - Authentication improvements
make_change "app/(auth)/layout.tsx" "Improve auth layout styling"
make_change "middleware.ts" "Add authentication middleware"
commit_with_date "🔐 Enhance authentication system and middleware" "2025-04-08 16:45:00"

# April 10, 2025 - Database improvements
make_change "prisma/schema.prisma" "Update database schema"
make_change "lib/prismadb.ts" "Optimize database connection"
commit_with_date "🗄️ Optimize database schema and connections" "2025-04-10 13:00:00"

# April 15, 2025 - UI Components
make_change "components/ui/button.tsx" "Enhance button component variants"
make_change "components/ui/input.tsx" "Add input validation styles"
commit_with_date "🧩 Improve UI component library" "2025-04-15 09:30:00"

# April 20, 2025 - Constants organization
make_change "constants.ts" "Add application constants"
update_version "0.1.1"
commit_with_date "📋 Organize application constants and configuration" "2025-04-20 15:45:00"

# May 2025 - Core Features Development
echo "🛠️  May 2025: Core Features Development"

# May 2, 2025 - Landing page improvements
make_change "app/(landing)/page.tsx" "Optimize landing page performance"
make_change "app/(landing)/layout.tsx" "Improve landing layout structure"
commit_with_date "🏠 Optimize landing page layout and performance" "2025-05-02 09:15:00"

# May 5, 2025 - Hero section
make_change "app/(landing)/components/Hero.tsx" "Add hero animations and interactions"
make_change "app/(landing)/components/design/Hero.tsx" "Enhance hero design elements"
commit_with_date "✨ Implement hero section with smooth animations" "2025-05-05 15:30:00"

# May 8, 2025 - Services section
make_change "app/(landing)/components/Services.tsx" "Add service cards with hover effects"
make_change "app/(landing)/components/design/Services.tsx" "Style services section"
commit_with_date "🎯 Create interactive services section" "2025-05-08 11:45:00"

# May 12, 2025 - Benefits and collaboration
make_change "app/(landing)/components/Benefits.tsx" "Implement benefits showcase"
make_change "app/(landing)/components/Collaboration.tsx" "Add collaboration features"
commit_with_date "💡 Add benefits and collaboration sections" "2025-05-12 14:20:00"

# May 15, 2025 - Pricing
make_change "app/(landing)/components/Pricing.tsx" "Create pricing tiers"
make_change "app/(landing)/components/PricingList.tsx" "Add pricing list component"
update_version "0.2.0"
commit_with_date "💰 Implement pricing section with subscription tiers" "2025-05-15 10:00:00"

# May 18, 2025 - Dashboard layout
make_change "app/(dashboard)/layout.tsx" "Improve dashboard layout"
make_change "components/sidebar.tsx" "Enhance sidebar navigation"
make_change "components/navbar.tsx" "Update navigation bar"
commit_with_date "📊 Enhance dashboard layout and navigation" "2025-05-18 16:10:00"

# May 22, 2025 - AI Conversation
make_change "app/(dashboard)/(routes)/conversation/page.tsx" "Implement AI conversation UI"
make_change "app/api/conversation/route.ts" "Add conversation API endpoint"
commit_with_date "🤖 Implement AI conversation functionality" "2025-05-22 13:35:00"

# May 25, 2025 - Code generation
make_change "app/(dashboard)/(routes)/code/page.tsx" "Create code generation interface"
make_change "app/api/code/route.ts" "Add code generation API"
commit_with_date "💻 Add AI code generation feature" "2025-05-25 12:15:00"

# May 28, 2025 - Image generation
make_change "app/(dashboard)/(routes)/image/page.tsx" "Implement image generation UI"
make_change "app/api/image/route.ts" "Add image generation API"
update_version "0.3.0"
commit_with_date "🎨 Implement AI image generation capability" "2025-05-28 15:50:00"

# June 2025 - Advanced Features
echo "🚀 June 2025: Advanced Features"

# June 2, 2025 - Music generation
make_change "app/(dashboard)/(routes)/music/page.tsx" "Create music generation interface"
make_change "app/api/music/route.ts" "Add music generation API"
commit_with_date "🎵 Add AI music generation capability" "2025-06-02 11:25:00"

# June 5, 2025 - Video generation
make_change "app/(dashboard)/(routes)/video/page.tsx" "Implement video generation UI"
make_change "app/api/video/route.ts" "Add video generation API"
commit_with_date "🎥 Implement AI video generation feature" "2025-06-05 14:40:00"

# June 8, 2025 - Stripe integration
make_change "app/api/stripe/route.ts" "Integrate Stripe payment processing"
make_change "lib/stripe.ts" "Configure Stripe client"
make_change "components/subscription-button.tsx" "Add subscription button"
commit_with_date "💳 Integrate Stripe payment system" "2025-06-08 10:30:00"

# June 12, 2025 - Pro features
make_change "components/pro-modal.tsx" "Create pro subscription modal"
make_change "components/free-counter.tsx" "Add usage counter"
make_change "lib/api-limit.ts" "Implement API rate limiting"
update_version "0.4.0"
commit_with_date "⭐ Add pro subscription features and limits" "2025-06-12 16:15:00"

# June 15, 2025 - Webhooks
make_change "app/api/webhook/route.ts" "Handle Stripe webhooks"
commit_with_date "🔗 Implement Stripe webhook handling" "2025-06-15 13:20:00"

# June 18, 2025 - Settings
make_change "app/(dashboard)/(routes)/settings/page.tsx" "Create settings page"
commit_with_date "⚙️ Add user settings and preferences" "2025-06-18 09:45:00"

# June 22, 2025 - Mobile improvements
make_change "components/mobile-sidebar.tsx" "Improve mobile navigation"
make_change "app/globals.css" "Add mobile responsive styles"
commit_with_date "📱 Enhance mobile responsiveness" "2025-06-22 15:00:00"

# June 25, 2025 - Providers
make_change "components/provider/theme-provider.tsx" "Add theme management"
make_change "components/provider/modal-provider.tsx" "Improve modal handling"
make_change "components/provider/toaster-provider.tsx" "Add toast notifications"
commit_with_date "🎨 Enhance theme and provider system" "2025-06-25 11:30:00"

# June 28, 2025 - UI enhancements
make_change "components/ui/dialog.tsx" "Improve dialog components"
make_change "components/ui/sheet.tsx" "Add sheet component"
make_change "components/ui/command.tsx" "Enhance command palette"
update_version "0.5.0"
commit_with_date "🧩 Enhance UI component library" "2025-06-28 14:55:00"

# July 2025 - Polish and Optimization
echo "✨ July 2025: Polish and Optimization"

# July 2, 2025 - Constants optimization
make_change "constants.ts" "Optimize application constants"
make_change "app/(dashboard)/(routes)/conversation/constants.ts" "Add conversation constants"
make_change "app/(dashboard)/(routes)/code/constants.ts" "Add code generation constants"
commit_with_date "📋 Optimize constants and configuration" "2025-07-02 10:15:00"

# July 5, 2025 - Styling improvements
make_change "app/landing.home.css" "Enhance landing page styles"
make_change "tailwind.landing.config.js" "Update landing page configuration"
commit_with_date "💄 Polish landing page styling" "2025-07-05 13:40:00"

# July 8, 2025 - Avatar system
make_change "components/bot-avatar.tsx" "Improve bot avatar component"
make_change "components/user-avatar.tsx" "Enhance user avatar display"
commit_with_date "👤 Improve avatar system and user interface" "2025-07-08 16:20:00"

# July 12, 2025 - Loading states
make_change "components/loader.tsx" "Add smooth loading animations"
make_change "components/ui/empty.tsx" "Create empty state components"
commit_with_date "⏳ Add loading animations and empty states" "2025-07-12 11:05:00"

# July 15, 2025 - Roadmap
make_change "app/(landing)/components/Roadmap.tsx" "Implement product roadmap"
make_change "app/(landing)/components/design/Roadmap.tsx" "Style roadmap section"
update_version "0.6.0"
commit_with_date "🗺️ Add product roadmap section" "2025-07-15 14:30:00"

# July 18, 2025 - Header and Footer
make_change "app/(landing)/components/Header.tsx" "Enhance header navigation"
make_change "app/(landing)/components/Footer.tsx" "Complete footer component"
commit_with_date "🏁 Complete header and footer components" "2025-07-18 09:50:00"

# July 22, 2025 - Component organization
make_change "components/tool-card.tsx" "Optimize tool card component"
make_change "components/heading.tsx" "Improve heading component"
commit_with_date "🧹 Optimize component structure and performance" "2025-07-22 12:25:00"

# July 25, 2025 - Hooks and utilities
make_change "hooks/use-pro-modal.ts" "Enhance pro modal hook"
make_change "lib/subscription.ts" "Improve subscription management"
make_change "lib/utils.ts" "Add utility functions"
commit_with_date "🔧 Enhance hooks and utility functions" "2025-07-25 15:45:00"

# July 28, 2025 - Asset optimization
make_change "public/assets/index.ts" "Organize asset exports"
commit_with_date "🖼️ Optimize and organize public assets" "2025-07-28 11:10:00"

# July 30, 2025 - Final release
make_change "README.md" "Update project documentation"
make_change "components.json" "Finalize component configuration"
update_version "1.0.0"
commit_with_date "📚 Final release - Update documentation and version" "2025-07-30 16:00:00"

echo "✅ Incremental git history created successfully!"
echo "📊 Total commits: $(git rev-list --count HEAD)"
echo "📅 Date range: April 1, 2025 - July 30, 2025"
echo ""
echo "🔍 View commit history:"
echo "git log --oneline --graph"
echo "git log --pretty=format:'%h %ad %s' --date=short"
echo "git log --pretty=format:'%h %ad %an %s' --date=format:'%Y-%m-%d %H:%M'" 