{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  env.GREET = "devenv";

  # packages = [ pkgs.git ];

  scripts.hello.exec = ''
    echo hello from $GREET
  '';

  enterShell = ''
    hello
    git --version
  '';

  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  android = {
    enable = true;
    flutter.enable = true;
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
}
