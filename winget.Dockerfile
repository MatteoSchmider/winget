FROM chocolatey/choco:latest-windows as base
RUN dir
RUN choco --help
RUN choco --version