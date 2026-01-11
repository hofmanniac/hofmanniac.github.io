---
layout: post
title: "Automating Post Templates"
date: 2025-02-16
categories: [Coding]
tags: [jekyll, blog]
---

# Automating Post Templates

As I'm ramping up on how to use Jekyll and post content, I wrote a quick bash script to help create a post. The script will ask you for a title, categories, and tags and then automatically create the markdown file under posts with that name, stamped with today's date. 

I tested it by creating this post. Better living through automation!

*Update - Tweaked the script below to set the path directory in case you are running it from a VS Code Dev Container. It may take the file a few minutes to show up in the VS Code Explorer, once it realizes the Dev Container workspace file was added.

```bash

#!/bin/bash

# Get the absolute path of the script's directory (assumed to be inside _scripts/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")" # Move up one level to the project root
POSTS_DIR="$PROJECT_ROOT/_posts"        # Ensure we're using the correct _posts directory

# Prompt user for post details
echo "📝 Creating a new Jekyll post..."
read -p "Enter the post title: " title
read -p "Enter the category (default: general): " category
read -p "Enter tags (comma-separated, default: jekyll, blog): " tags

# Set defaults
category=${category:-general}
tags=${tags:-"jekyll, blog"}

# Format date
today=$(date +%Y-%m-%d)
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -d '[:punct:]')
filename="$POSTS_DIR/${today}-${slug}.md"

# Ensure _posts directory exists
mkdir -p "$POSTS_DIR"

# Check if file exists
if [ -f "$filename" ]; then
  echo "⚠️ Error: A post with this title already exists!"
  exit 1
fi

# Create post content
cat <<EOF >"$filename"
---
layout: post
title: "$title"
date: $today
categories: [$category]
tags: [$tags]
---

# $title

Write your content here...
EOF

echo "✅ Created new post: $filename"


```
