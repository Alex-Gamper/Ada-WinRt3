# Copilot Instructions

## General Guidelines
- Target platform preference: Windows x64.
- First general instruction
- Second general instruction

## Code Style
- Use specific formatting rules
- Follow naming conventions
- Use SafeHandle wrappers for ref-counted opaque native types and keep delegate instances alive to avoid GC.
- Add managed wrappers around native handles (SafeHandle-based) and continue mapping remaining libadalang C API functions in LibAdaLang.cs.
- Use default DLL name "libadalang.dll" for P/Invoke DllImport declarations.

## Project-Specific Rules
- Preferred native DLL name: libadalang.dll; overwrite interop file; include managed conversion helpers for ada_text/char*.
- Custom requirement A
- Custom requirement B