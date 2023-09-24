let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.python3
      pkgs.curl
    ];
  }
  env = {
      ENV="local"
      # Database credentials
      DB_USER = "db_user";
      DB_PASSWORD = "super secret don't look";
  };
