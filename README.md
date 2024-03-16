# nix-config
My NixOS configurations


## Enable the Flakes feature and the accompanying new nix command-line tool

```nix
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs; [
    # Flakes clones its dependencies through the git command,
    # so git must be installed first
    git
    vim
    wget
    curl
  ];
```


### Run

```shell
sudo nixos-rebuild switch --flake github:andreweick/nix-config#lugnuts
```

```shell
nix-shell -p git --command "nix run GitHub:andreweick/nix-config#lugnuts --extra-features nix-command --extra-experimental-features flakes"
```

## Garbage collect

```shell
nix-collect-garbage
```