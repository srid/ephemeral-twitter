let 
  pkgs = import ./dep/nixpkgs {};
in pkgs.buildGoModule rec {
  pname = "fleets";
  version = "0.1";

  # https://github.com/karan/fleets/pull/3
  src = pkgs.fetchFromGitHub {
    # owner = "karan";
    owner = "srid";
    repo = "fleets";
    # rev = "3258bb05302eeb6bd49328da16dfacbfc3e3de55";
    rev = "1ce2a3dc67c4f2e8980a2f15f128e6525bb7eada";
    # sha256 = "sha256:0cryjmbbzv1jcl045l0ff3xalfdi235fa0nlbx2b4z0j93kq11s1";
    sha256 = "sha256:198v60qm7w2h80l613aqyxm9wq769a0z4h796ih91az5scialy78";
  };

  vendorSha256 = "sha256:11ms8f9fc8y8hjkg7ndrcgh300fv391icakp625zk40ifbfvb59r"; 

  subPackages = [ "." ]; 

  # deleteVendor = true; 

  runVend = true; 

  meta = with pkgs.lib; {
    description = "Automatically delete tweets, retweets, and favorites.";
    homepage = "https://github.com/karan/fleets";
    license = licenses.asl20;
    platforms = platforms.linux ++ platforms.darwin;
  };
}
