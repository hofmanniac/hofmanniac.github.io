---
layout: project
title: Nova
excerpt: A lightweight AI agent framework with file-based knowledge management. Build intelligent agents with flexible reasoning strategies and maintain a personal knowledge graph.
type: ai framework
category: ai
featured: true
tags: [ai, agents, knowledge-management, python, svelte]
status: in-progress
---

# Nova - AI Agentic Framework for Personal Productivity

## Overview

Nova is a lightweight, low-dependency AI agent framework combined with a file-based knowledge management system. Built with Python and Svelte, it provides a flexible foundation for creating intelligent agents that can reason, use tools, and manage personal knowledge bases.

## Key Features

**Agent Framework**
- Clean separation between reasoning policies (ReAct, Chain-of-Thought) and execution primitives
- Hierarchical agent composition - agents can delegate to specialized sub-agents
- Extensible tool/capability system for building custom operations
- Session persistence with crash-resilient message-per-file storage
- Permission-based architecture with read-only and read-write access controls

**Knowledge Management**
- File-based graph storage using YAML (no database required)
- Flexible metadata and relationship system
- Full-text search and filtering capabilities
- Inline editing interface (Notion-style UX)
- Git-friendly storage format for version control

**Conductor Agent**
- Primary orchestrator with exclusive write access to the knowledge graph
- Natural language interface for querying and managing items
- Intelligent delegation to specialized sub-agents for analysis tasks
- Maintains conversation history across sessions

## Architecture

Nova is built as a collection of independent, composable components:

**Thoughts Framework** - The core agentic AI engine that handles reasoning, tool execution, and agent orchestration. It provides the foundational primitives for building intelligent agents with different reasoning strategies (Reasoner), execution orchestration (AgentOperation), and extensible capabilities.

**Graph Memory System** - A standalone file-based knowledge graph implementation that manages items, relationships, and metadata. It operates independently from the agent framework and can be used with or without AI components.

**Backend API** - Flask-based REST API that connects the Thoughts framework to the Graph Memory system and exposes endpoints for the frontend. Includes the Conductor agent implementation.

**Frontend UI** - Svelte-based web interface for browsing, searching, and editing items in the knowledge graph. Communicates with the backend via REST API and provides an inline editing experience.

This separation enables each component to evolve independently and allows developers to use only the parts they need (e.g., the Thoughts framework can be used for non-knowledge-management tasks).

## Tech Stack

- **Backend**: Python, Flask
- **Frontend**: Svelte, TypeScript
- **Storage**: File-based (YAML for items, JSON for sessions)
- **LLM Integration**: Provider-agnostic adapters (OpenAI, Anthropic, etc.)

## Status

Active development. Core framework and knowledge graph functionality are stable. Frontend editing interface and advanced agent capabilities are in progress.
