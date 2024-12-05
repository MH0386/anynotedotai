{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv";
    mk-shell-bin.url = "github:rrbutani/nix-mk-shell-bin";
    devenv-root = {
      url = "file+file:///dev/null";
      flake = false;
    };
    nix2container = {
      url = "github:nlewo/nix2container";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  nixConfig = {
    extra-trusted-public-keys = "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=";
    extra-substituters = "https://devenv.cachix.org";
  };

  outputs =
    inputs@{ flake-parts, devenv-root, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ inputs.devenv.flakeModule ];
      systems = [
        "x86_64-linux"
        # "i686-linux"
        # "x86_64-darwin"
        # "aarch64-linux"
        # "aarch64-darwin"
      ];

      perSystem =
        {
          config,
          self',
          inputs',
          pkgs,
          system,
          ...
        }:
        {
          # Per-system attributes can be defined here. The self' and inputs'
          # module parameters provide easy access to attributes of the same
          # system.

          # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
          packages.default = pkgs.hello;

          devenv.shells.default = {
            devenv.root =
              let
                devenvRootFileContent = builtins.readFile devenv-root.outPath;
              in
              pkgs.lib.mkIf (devenvRootFileContent != "") devenvRootFileContent;

            name = "AnyNote.AI";

            imports = [
              # This is just like the imports in devenv.nix.
              # See https://devenv.sh/guides/using-with-flake-parts/#import-a-devenv-module
              # ./devenv-foo.nix
            ];

            # https://devenv.sh/reference/options/
            packages = [ config.packages.default ];

            enterShell = ''
              hello
            '';

            processes.hello.exec = "hello";
            languages.java = {
              enable = true;
              jdk.package = pkgs.lib.mkDefault pkgs.jdk17;
              gradle.enable = true;
            };
            android = {
              enable = true;
              flutter = {
                enable = true;
                package = pkgs.flutter;
              };
              platforms.version = [
                "32"
                "34"
              ];
              systemImageTypes = [ "google_apis_playstore" ];
              abis = [
                "arm64-v8a"
                "x86_64"
              ];
              # cmakeVersions = [ "3.30.5" ];
              cmdLineTools.version = "11.0";
              tools.version = "26.1.1";
              platformTools.version = "34.0.5";
              buildTools.version = [ "30.0.3" ];
              emulator = {
                enable = true;
                version = "34.1.9";
              };
              sources.enable = false;
              systemImages.enable = true;
              ndk.enable = true;
              googleAPIs.enable = true;
              # googleTVAddOns.enable = true;
              extras = [ "extras;google;gcm" ];
              extraLicenses = [
                "android-sdk-preview-license"
                "android-googletv-license"
                "android-sdk-arm-dbt-license"
                "google-gdk-license"
                "intel-android-extra-license"
                "intel-android-sysimage-license"
                "mips-android-sysimage-license"
              ];
              # android-studio = pkgs.android-studio;
            };
          };

        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.

      };
    };
}
