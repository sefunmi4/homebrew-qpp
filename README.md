# homebrew-qpp

This tap provides the [Q++](https://github.com/sefunmi4/qpp-gcc) compiler and simulator for Homebrew.

## Installation

```bash
brew tap sefunmi4/qpp
brew install qpp
```

The formula automatically extracts the bundled archive and installs the `qpp` binary.

## Usage

After installation, the compiler is available via:

```bash
qpp --help
qpp --version
```

To compile and run a program:

```bash
qpp path/to/program.qpp
```
