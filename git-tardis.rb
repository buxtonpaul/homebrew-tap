class GitTardis < Formula
  desc "Time travelling git repository inspector & historical rebase tool"
  homepage "https://github.com/buxtonpaul/git-tardis"
  url "https://github.com/buxtonpaul/git-tardis/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "818e6a4176e3ec72e869425202d2ce2021da1cdaacb04878114fd1df6f2797ab"
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
