# FEA E-Motor Winding Automated Design and Optimisation Framework

A Python and machine learning model based automated scientific computational framework for surrogate model assisted FEA design and optimisation of electric motor winding geometries

This repository contains a cleaned and refactored version of the Python automation code developed during my PhD research. The original research scripts are preserved in `legacy/`, while the refactored, testable software modules are being developed under `src/motoropt/`.

## Project Overview

The framework was developed to automate the design exploration of electric motor winding structures.

The original workflow connected:

```text
OptiSLang
→ Python automation scripts
→ parametric conductor geometry generation
→ Maxwell VBScript automation generation
→ Ansys Maxwell FEA simulation
→ result extraction
→ sensitivity analysis and metamodel training
→ genetic algorithm optimisation
```

The main purpose was to replace repeated manual FEA setup with a reproducible automated workflow capable of exploring large design spaces.

## Key Features

* Automated simulation folder creation
* Persistent simulation / coil counter management
* Excel and CSV input/output handling
* Automatic generation of Maxwell VBScript automation files
* Preservation of legacy PhD research scripts
* Refactored Python modules with unit tests
* Regression-style tests for Maxwell command ordering

## Repository Structure

```text
src/motoropt/
├── data/
│   ├── directory_manager.py
│   ├── simulation_counter.py
│   └── excel_io.py
│
├── maxwell/
│   └── vbscript_generator.py
│
├── geometry/
├── experiments/
├── optislang/
└── visualisation/

tests/
├── test_directory_manager.py
├── test_simulation_counter.py
├── test_excel_io.py
└── test_vbscript_generator.py

legacy/
├── data/
├── experiments/
├── maxwell/
├── optislang/
└── notes/
```

## Refactored Modules

### `directory_manager.py`

Creates simulation output folders using stage name, experiment name, and simulation / coil number.

### `simulation_counter.py`

Reads, writes, and updates the `.ini` file used to store the current simulation / coil counter.

### `excel_io.py`

Handles Excel and CSV input/output used in the simulation workflow, including coil geometry export and Maxwell result extraction.

### `vbscript_generator.py`

Generates Visual Basic automation scripts used to control Ansys Maxwell.
The command order is intentionally preserved because Maxwell automation is sensitive to execution sequence.

## Legacy Code

The `legacy/` folder contains the original PhD research scripts before refactoring.

These files are preserved to:

* retain the original working implementation
* show the historical research workflow
* provide a reference while the cleaner package is developed
* avoid losing behaviour during refactoring

The cleaned implementation is being developed separately under `src/motoropt/`.

## Testing

This project uses `pytest`.

Run all tests from the repository root:

```bash
pytest
```

Run an individual test file:

```bash
pytest tests/test_directory_manager.py
```

The tests currently check:

* folder naming and directory creation
* simulation counter creation, reading, and updating
* Excel / CSV input-output behaviour
* Maxwell VBScript generation command ordering

## Technologies Used

* Python 3.11+
* pytest
* pandas
* shapely
* pathlib
* configparser
* Ansys Maxwell automation via generated VBScript
* Ansys OptiSLang workflow integration

## Current Status

This repository is under active refactoring.

The original PhD scripts are preserved in `legacy/`, while the cleaned software package is being developed progressively under `src/motoropt/`.

Completed refactors:

* directory management
* simulation counter handling
* Excel / CSV input-output
* Maxwell VBScript generation

Planned refactors:

* geometry generation
* experiment orchestration
* OptiSLang interconnect scripts
* visualisation utilities
* documentation and architecture diagrams

## Notes

Large simulation files, Maxwell project files, generated bulk outputs, and full optimisation datasets are intentionally excluded from this repository.

Representative examples may be added later under `examples/`.
