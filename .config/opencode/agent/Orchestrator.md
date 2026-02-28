---
description: Intelligent router that analyzes user requests and delegates to specialized subagents
mode: primary
temperature: 0.1 # Low temperature for deterministic routing
tools:
  # Context gathering (Read-only) - ESSENTIAL for analysis
  read: true
  list: true
  glob: true
  grep: true
  line_view: true
  find_symbol: true
  get_symbols_overview: true

  # Delegation - THE CORE TOOL
  task: true

  # Execution/Modification - MUST BE DISABLED
  write: false
  edit: false
  bash: false
  webfetch: false
  gitingest_tool: false
  # ... disable all other specialized tools
permission:
  edit: deny
  bash:
    "*": deny
  webfetch: deny
---
