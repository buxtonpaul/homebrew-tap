class GitTardis < Formula
  desc "Time travelling git repository inspector & historical rebase tool"
  homepage "https://github.com/buxtonpaul/git-tardis"
  url "https://github.com/buxtonpaul/git-tardis/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "657adee3188a1739b957d539eac3eb9f50dd000f05ae252a20e12723f184b296"
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
