# Legacy File Map

This folder preserves the original PhD automation scripts before refactoring.

The purpose of the `legacy/` directory is to:
- retain the original working research code in its historical form
- preserve the automation workflow used during the PhD project
- provide a reference point while the codebase is gradually refactored into the `src/motoropt/` package structure

## Legacy folder layout

- `legacy/data/`  
  Utility and workflow support scripts such as directory creation, Excel I/O and simulation counter / `.ini` management.

- `legacy/maxwell/`  
  Python scripts responsible for generating Maxwell VBScript automation files and driving FEA setup / export.

- `legacy/experiments/`  
  Original experiment orchestration scripts containing geometry generation, conductor placement logic, workflow control and plotting.

- `legacy/optislang/`  
  Original OptiSLang interconnect scripts used to receive optimisation variables and pass them into the experiment scripts.

## Refactor intent

The long-term aim is to migrate the legacy scripts into the modular package structure under `src/motoropt/`, including:
- `motoropt/data/`
- `motoropt/geometry/`
- `motoropt/maxwell/`
- `motoropt/experiments/`
- `motoropt/optislang/`
- `motoropt/visualisation/`

This note will be expanded as the refactor progresses.