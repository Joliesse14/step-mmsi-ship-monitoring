# Step-MMSI – Ship Monitoring and Performance Analysis

A university project developed as part of the Software Engineering course at Bremerhaven University of Applied Sciences.

The project monitors AIS ship data using MMSI identifiers, processes incoming information with Bash scripts, performs performance tests, and visualizes the collected data using Gnuplot. The project documentation is provided as a scientific poster created with LaTeX.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Performance Testing](#performance-testing)
- [Visualization](#visualization)
- [Documentation](#documentation)
- [Authors](#authors)
- [License](#license)

---

## Project Overview

The objective of this project is to monitor incoming AIS ship data, identify vessels by their MMSI (Maritime Mobile Service Identity), process the received information, evaluate system performance, and visualize the results.

The project also contains a scientific poster describing the implementation and evaluation.

---

## Features

- Monitor incoming AIS ship data
- Process MMSI information using Bash scripts
- Record and analyse received messages
- Execute automated performance tests
- Generate graphical statistics with Gnuplot
- Produce result reports
- Scientific documentation written in LaTeX

---

## Technology Stack

- Bash
- Linux
- Gnuplot
- LaTeX
- Git

---

## Project Structure

```text
.
├── aktuelle-version/
│   ├── mmsi.sh              # Main processing script
│   ├── result.sh            # Result generation
│   ├── watcher.sh           # Monitoring script
│   ├── rhodes.sh            # Data processing
│   ├── rhodes.gp            # Gnuplot script
│   ├── rhodes.png           # Generated graph
│   └── watcher.dat
│
├── lasttest/
│   ├── lasttest.sh          # Performance test
│   ├── lasttest.gp          # Gnuplot script
│   ├── lasttest.png         # Performance graph
│   └── last.csv
│
├── poster_portrait/
│   ├── poster.tex           # Scientific poster
│   ├── poster.pdf
│   ├── preamble.sty
│   ├── bibtex/
│   └── src/
│
├── sicherung.sh
└── README.md
```

---

## Prerequisites

The following software is required:

- Linux
- Bash
- Git
- Gnuplot
- LaTeX (LuaLaTeX recommended)

---

## Usage

Clone the repository

```bash
git clone https://github.com/Joliesse14/Step-mmsi.git
cd Step-mmsi
```

Run the monitoring script

```bash
bash aktuelle-version/mmsi.sh
```

Generate the results

```bash
bash aktuelle-version/result.sh
```

---

## Performance Testing

Performance tests are available in the `lasttest` directory.

Execute

```bash
bash lasttest/lasttest.sh
```

The generated CSV files can be visualized using Gnuplot.

---

## Visualization

Graphs are created automatically with Gnuplot.

Example outputs include:

- Performance diagrams
- Message statistics
- Monitoring results

---

## Documentation

The project documentation is available as a scientific poster.

Compile the poster using

```bash
cd poster_portrait
./buildlualatex.sh
```

or compile `poster.tex` manually with LuaLaTeX.

---

## Authors

Developed as part of Einführung in the Informatik course at

**Bremerhaven University of Applied Sciences**

---

## License

This project was developed solely for educational purposes.
