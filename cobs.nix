{
  lib,
  buildPythonApplication,
  fetchPypi,
  setuptools,
}:
buildPythonApplication rec {
  pname = "cobs";
  version = "1.2.0";

  pyproject = true;
  build-system = [setuptools];

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-2TsQtTcNyIaJYK77cK2x9zpOYQexaRgwekru79PtuPY=";
  };
  # no tests in archive
  docheck = false;
}
