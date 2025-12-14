{ config, ... }:
let
  cfg = config.omarchy;
in
{
  programs.git = {
    enable = true;
    settings.user.name = cfg.full_name;
    settings.user.email = cfg.email_address;
    settings = {
      credential.helper = "manager";
      credential.credentialStore = "cache";
    };
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };
}
