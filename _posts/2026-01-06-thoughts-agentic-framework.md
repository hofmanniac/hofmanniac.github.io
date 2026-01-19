---
layout: post
title: "🤖 Thoughts Agentic Framework"
date: 2026-01-06
categories: [AI]
tags: [ai, agents]
---

# Building My Own AI Agent Framework (Because Why Not?)

I've been working on a personal project that's been scratching a very specific itch: what if I could build my own AI agent framework that's actually simple to understand, doesn't require installing half the internet, and works the way *I* want it to work?

## What Is This Thing?

It's called Thoughts, and it's basically a low-dependency AI agentic framework designed for personal productivity and knowledge management. Think of it as a combination of a personal AI assistant and a knowledge base - but one where you actually understand what's happening under the hood.

The core insight is pretty simple: all those fancy agent reasoning strategies (ReAct, Chain-of-Thought, Plan-Execute, etc.) are fundamentally doing the same thing—they're just deciding which messages to add to a conversation before calling the LLM again. So instead of building some massive, opaque framework, I separated the *policy* (what messages to build) from the *primitive* (calling the model).

## What Can It Do?

Right now, it has two main components:

**1. The Knowledge Graph**

A file-based knowledge management system where everything is stored as YAML files. It's like Notion or Obsidian, but much simpler—items have names, content, metadata, relationships, and that's about it. No database, no lock-in, just files you can version control.

**2. The AI Agent Framework**

This is the fun part. I built a clean agent architecture where you can:
- Swap reasoning strategies easily (ReAct, Chain-of-Thought, etc.)
- Build hierarchical agents (agents that call other agents)
- Create custom tools and capabilities
- Have persistent conversation sessions that survive crashes

The main agent is called the "Conductor" - it's the only thing allowed to modify your knowledge graph, while sub-agents can be spun up for research or analysis tasks with read-only access. Clean permissions, no chaos.

## Why Build This?

I wanted something I could understand completely, modify easily, and use for my actual day-to-day work. Plus, building it has taught me way more about how LLM agents actually work than just using someone else's framework ever would.

## System Architecture

Thoughts is built as a modular system with four distinct components:

**1. Backend (Flask + Python)** - Handles API endpoints, session management, and orchestration

**2. Frontend (Svelte)** - Provides the user interface with inline editing and real-time updates

**3. Graph Memory System** - File-based YAML storage for the knowledge graph, completely decoupled from the agent logic

**4. Thoughts API** - The core agentic AI engine that powers reasoning, tool execution, and multi-turn conversations

Each component is intentionally separate, making it easy to swap out pieces, test in isolation, or even use parts of the system independently. Want to use the graph memory without the AI? Go for it. Want to plug the Thoughts API into a different frontend? It's just HTTP requests.

## The Architecture Philosophy

Everything follows a few simple principles:

- **Separation of concerns**: The agent loop, reasoning strategy, and tool execution are all separate
- **Composability**: Tools can be composed into agents, agents can be composed into bigger agents
- **Transparency**: Session history is stored as individual JSON files—you can literally read the conversation
- **Minimal abstraction**: Just enough structure to be useful, not so much that it's confusing

## Current Status

It's functional but still evolving! The backend is solid (Flask + Python), the knowledge graph works great, and I'm building out a Svelte frontend with inline editing (think Notion-style). The agent framework can already handle multi-turn conversations, tool calling, and hierarchical task delegation.

Is it production-ready enterprise software? Nope. Is it a fun, educational project that I actually use? Absolutely.

---

*If you're interested in building your own AI tools or just want to understand how agent frameworks work under the hood, check out the [Nova project page](/projects/nova/) for more details. I'll probably open-source it once it's a bit more polished.*
