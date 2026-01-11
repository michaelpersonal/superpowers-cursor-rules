# 🦸 Superpowers for Cursor

Comprehensive development workflow skills for Cursor AI agents. These rules help AI assistants follow best practices for software development.

## Quick Setup

Run the setup script to symlink these rules to your global Cursor rules directory:

```bash
./enable-superpowers.sh
```

This creates a symlink from `~/.cursor-rules` to this repository, making the rules available in all your Cursor projects.

## Available Skills

| Skill | When to Use |
|-------|-------------|
| **superpowers-brainstorming** | Starting a new feature, exploring ideas |
| **superpowers-writing-plans** | Creating detailed implementation plans |
| **superpowers-executing-plans** | Following a written plan step-by-step |
| **superpowers-subagent-driven-development** | Executing plans with fresh subagents per task |
| **superpowers-test-driven-development** | Writing any code (RED → GREEN → REFACTOR) |
| **superpowers-systematic-debugging** | Fixing bugs, investigating failures |
| **superpowers-verification-before-completion** | Before claiming work is done |
| **superpowers-requesting-code-review** | Asking for feedback on your work |
| **superpowers-receiving-code-review** | Responding to review comments |
| **superpowers-using-git-worktrees** | Isolating feature work |
| **superpowers-finishing-a-development-branch** | Completing and merging work |

## Core Principles

1. **TDD Always** - Write the test first, watch it fail, then implement
2. **Verification Before Completion** - Never claim success without evidence
3. **Systematic Debugging** - Find root cause before attempting fixes
4. **YAGNI** - Don't build what you don't need
5. **DRY** - Don't repeat yourself
6. **Frequent Commits** - Small, focused commits with clear messages

## Usage in Projects

Reference skills in your prompts:
```
@superpowers-brainstorming.mdc Let's design a new authentication system
```

Or invoke by context - the AI will use appropriate skills automatically based on the `superpowers.mdc` always-on rules.

## File Structure

```
.
├── README.md
├── enable-superpowers.sh          # Setup script
├── superpowers.mdc                 # Always-on rules (TDD, verification, debugging)
├── superpowers-brainstorming.mdc
├── superpowers-writing-plans.mdc
├── superpowers-executing-plans.mdc
├── superpowers-subagent-driven-development.mdc
├── superpowers-test-driven-development.mdc
├── superpowers-systematic-debugging.mdc
├── superpowers-verification-before-completion.mdc
├── superpowers-requesting-code-review.mdc
├── superpowers-receiving-code-review.mdc
├── superpowers-using-git-worktrees.mdc
└── superpowers-finishing-a-development-branch.mdc
```

## Origin

Based on [obra/superpowers](https://github.com/obra/superpowers) - AI development workflow skills.

## License

MIT
