{ lib
, buildPythonPackage
, fetchFromGitHub
, setuptools
, wheel
, papermill
, luadata
}:

buildPythonPackage rec {
  pname = "versuchung";
  version = "1.4.2";

  src = fetchFromGitHub {
    owner = "halbuer";
    repo = "versuchung";
    rev = "c78dbbef81db2e6a4fb0dfbfedefefbbec7436cb";
    hash = "sha256-LV1flf8kwOIr/sDCAiGRAmPdi4hijAi57nc9/UpUSJ4=";
  };

  # do not run tests
  doCheck = false;

  dependencies = [
    papermill
    luadata
  ];

  # specific to buildPythonPackage, see its reference
  pyproject = true;
  build-system = [
    setuptools
    wheel
  ];
}
