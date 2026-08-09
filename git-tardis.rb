class GitTardis < Formula
  desc "Time travelling git repository inspector & historical rebase tool"
  homepage "https://github.com/buxtonpaul/git-tardis"
  url "https://github.com/buxtonpaul/git-tardis/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "44aaa3ee404b14a65c36ef216c05ae42203a1972a5c3b1e25fe768c04d6e3ffa"
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
