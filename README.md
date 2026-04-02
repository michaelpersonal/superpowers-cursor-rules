# 🦸 Superpowers for Cursor

Comprehensive development workflow skills for Cursor AI agents. These rules help AI assistants follow best practices for software development.

## Quick Setup

The setup script expects the shared rules to live at **`~/.cursor-rules`**. It then links the **current project's** `.cursor/rules` to that directory.

### 1. Install the rules once

Put this repository at `~/.cursor-rules`, for example:

```bash
git clone https://github.com/michaelpersonal/superpowers-cursor-rules.git ~/.cursor-rules
```

If you already cloned elsewhere, point `~/.cursor-rules` at it (symlink or move):

```bash
ln -s /path/to/superpowers-cursor-rules ~/.cursor-rules
```

### 2. Enable in each Cursor project

From a **project root** (where you want `.cursor/rules`):

```bash
~/.cursor-rules/enable-superpowers.sh
```

This creates **`./.cursor/rules` -> `~/.cursor-rules`** so Cursor loads the shared rules in that project.

If your only clone **is** `~/.cursor-rules`, you can run `./enable-superpowers.sh` from that directory to wire up rules for the clone itself (optional).

## Available Skills

| Skill | When to Use |
|-------|-------------|
| **superpowers-brainstorming** | Starting a new feature, exploring ideas |
| **superpowers-writing-plans** | Creating detailed implementation plans |
| **superpowers-executing-plans** | Following a written plan step-by-step |
| **superpowers-subagent-driven-development** | Executing plans with fresh subagents per task |
| **superpowers-test-driven-development** | Writing any code (RED -> GREEN -> REFACTOR) |
| **superpowers-systematic-debugging** | Fixing bugs, investigating failures |
| **superpowers-verification-before-completion** | Before claiming work is done |
| **superpowers-requesting-code-review** | Asking for feedback on your work |
| **superpowers-receiving-code-review** | Responding to review comments |
| **superpowers-using-git-worktrees** | Isolating feature work |
| **superpowers-finishing-a-development-branch** | Completing and merging work |
| **superpowers-project-retrospective** | End of project: "How I Built This" retrospective |
| **superpowers-design-mockup** | Visual mockups in Pencil before implementation |

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
├── enable-superpowers.sh          # Links .cursor/rules -> ~/.cursor-rules
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
├── superpowers-finishing-a-development-branch.mdc
├── superpowers-project-retrospective.mdc
└── superpowers-design-mockup.mdc
```

## Origin

Based on [obra/superpowers](https://github.com/obra/superpowers) - AI development workflow skills.

## License

MIT
