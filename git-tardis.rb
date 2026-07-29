class GitTardis < Formula
  desc "Time travelling git repository inspector & historical rebase tool"
  homepage "https://github.com/buxtonpaul/git-tardis"
  url "https://github.com/buxtonpaul/git-tardis/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "addbbf9fc3c9435c6928a6d0542aceb1731576a9dc1c1edce58aea7aa6036a07"
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
