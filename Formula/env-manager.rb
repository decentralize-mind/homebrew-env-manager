class EnvManager < Formula
  desc "Enterprise-grade secrets management with Web3 security features"
  homepage "https://github.com/decentralize-mind/env-manager"
  
  # Build from source (until release binaries are available)
  url "https://github.com/decentralize-mind/env-manager.git", tag: "v0.1.0"
  
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test that the binary runs
    system "#{bin}/env-manager", "--help"
    
    # Test vault initialization
    system "#{bin}/env-manager", "vault-init"
  end
end
