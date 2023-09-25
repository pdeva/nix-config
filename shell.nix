let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.python311
      pkgs.curl
      pkgs.htop
      pkgs.git
      pkgs.go_1_21
      pkgs.cargo
      pkgs.llvmPackages_16.stdenv
    ];
  env = {
      ENV="local";
      # Database credentials
      DB_USER = "db_user";
      DB_PASSWORD = "super secret don't look";
  };
  shellHook = ''
    echo "git:  $(git  --version)"
    echo "htop: $(htop --version)"
    echo "python: $(python --version)"
    echo "go: $(go version)"
    echo "cargo: $(cargo version)"
    echo "clang: $(clang --version)"
  '';
}
