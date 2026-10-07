class GitTardis < Formula
  desc "Time travelling git repository inspector & historical rebase tool"
  homepage "https://github.com/buxtonpaul/git-tardis"
  url "https://github.com/buxtonpaul/git-tardis/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "94258c572064c1188429022dd40c77cebb9e2423170d992a9fac5c70acc9a459"
  license "MIT"
  head "https://github.com/buxtonpaul/git-tardis.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "git-tardis", shell_output("#{bin}/git-tardis --version")
  end
end
