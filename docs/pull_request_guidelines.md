# Pull Request Guidelines

This document is intended as a reference.  All OR repos need not adopt all
practices outlined, but PR feedback might reasonably reference the guidelines detailed here.

## PR Naming

OR uses the [Git Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
and observes the following naming convention for branches:

```shell
- feature/added-cosine-error-function   # Use feature/\<feature-name> for new functionality
- bug/made-behavior-deterministic       # Use bug/\<bug-description> for bug fixes
- chore/refactored-logging-utilise      # use chore/\<chore-description> for chores
```

## PR Length

* It should be digestably short as [per Cisco](https://smartbear.com/learn/code-review/best-practices-for-peer-code-review/).

## Git Commit Messages

Should follow guidelines from [commit.style](https://commit.style/)

More:

* [A note about git messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
* [write a good commit message](https://juffalow.com/other/write-good-git-commit-message)

Example good commit message

```shell
Add PR template

Summary:
- Helps OccamzRazor with consensus
- Consistent wording makes it easier to mentally process a list of commits
```

## Unit Tests

* All functional changes _must_ update any existing pertinent unit tests.
* New functionality _must_ be tested adequately by new unit tests.
* For larger PRs, [Integration tests](https://en.wikipedia.org/wiki/Integration_testing) _must_ be written to ensure that the code
runs to completion right the way through (a.k.a. "End to end" or "E2E") a high-level Use Case.

## Type of change

* The type of change should be indicated in the name of the branch [Git Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
* Change type can be one of:
  * Bug fix (non-breaking change which fixes an issue)
  * Chore (does not add or subtract functionality, but otherwise improves the codebase)
  * New feature (non-breaking change which adds functionality)
  * Breaking change (fix or feature that would cause existing functionality to not work as expected)
  * This change requires a documentation update

## Coding Guidelines & Engineering Concepts

---

These guidelines are intended as a guide for development at OR.

Endeavour to utilise appropriate elements from the below list whenever possible.

* We use the [Google style guide]() for python coding, make sure to obey these rules as well as any other official PEP rules for the version of python you are using.
* Pick appropriate [Data Structures](https://en.wikipedia.org/wiki/Data_structure#Examples)
* Choose the most appropriate [Algorithm](https://en.wikipedia.org/wiki/Algorithm)
* [Separation of Concerns](https://en.wikipedia.org/wiki/Separation_of_concerns)
* [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)
* [SOLID](https://en.wikipedia.org/wiki/SOLID)

    > [Single responsibility principle](https://en.wikipedia.org/wiki/Single_responsibility_principle) : A class should only have a single responsibility, that is, only changes to one part of the software's specification should be able to affect the specification of the class.
    > [Open–closed principle](https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle): "Software entities ... should be open for extension, but closed for modification."
    > [Liskov substitution principle](https://en.wikipedia.org/wiki/Liskov_substitution_principle): "Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program." See also design by contract.
    > [Interface segregation principle](https://en.wikipedia.org/wiki/Interface_segregation_principle): "Many client-specific interfaces are better than one general-purpose interface."
    > [Dependency inversion principle](https://en.wikipedia.org/wiki/Dependency_inversion_principle): "One should "depend upon abstractions, [not] concretions."

* [Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern#Classification_and_list): "a general, reusable solution to a commonly occurring problem within a given context in software design.". [Design Patterns Cheatsheet](https://www.dropbox.com/s/sldvgt1j0a6khjq/DesignPatternsCheatSheet.pdf?dl=0). See <> for Design Pattern resources including books.

* [Use Case Analysis](https://en.wikipedia.org/wiki/Use_case#Examples) can help especially if you have a number of interacting entities or numerous ways your software can be used.

Other considerations for your code :

* Stability
* Performance. **Only when necessary**, consider the runtime complexity of your code using [The Big-O Cheatsheet](https://www.dropbox.com/s/u335wkwhs2q75h4/big-o-cheatsheet.pdf?dl=0).
* Monitoring
* Testability
* Dependencies
* Side effects
* Verification
