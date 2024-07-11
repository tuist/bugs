# Bugs

This repository is a directory of bugs that we encountered along with a reproducible project that demonstrates the bug. The goal is to provide a place for developers to find solutions to bugs they encounter in their own projects.

> [!NOTE]
> Every project under [bugs](./bugs) contains a `README.md` documenting what the issue is, and either how to solve it or a link to the PR that solves it.

## Bugs

- [Google Analytics not found when using the cache](./bugs/google-analytics-not-found-with-cache): XCFrameworks can only contain one Swift module. When they link other XCFrameworks with Swift modules, the compiler can't find the Swift modules at build time. The solution is to import the module using `@_implementationOnly import ModuleName`.