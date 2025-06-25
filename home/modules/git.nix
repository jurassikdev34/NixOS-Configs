{ pkgs, ... }:

{
  home.file.".gitconfig".text = ''
    [init]
      defaultBranch = master
    [user]
      email = jurassikdev34@jd34.net
      name = JurassikDev34
      signingkey = F59B0A14AEE7C7E0E75D1DED9AE21A5A5A8E18D3
    [commit]
      gpgSign = true
  '';
}

