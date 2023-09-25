let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.python311
      pkgs.curl
      pkgs.htop
      pkgs.git
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
  '';
}
