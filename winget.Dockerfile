FROM chocolatey/choco:v1.4.0-windows as base
RUN dir
RUN choco --help
RUN choco --version