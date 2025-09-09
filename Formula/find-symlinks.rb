class FindSymlinks < Formula
  desc "Fast symlink finder"
  homepage "https://github.com/rhukster/find-symlinks"
  url "https://github.com/rhukster/find-symlinks/archive/refs/tags/1.0.1.tar.gz"
  sha256 "a3598050b277672c02d9f51997e5126213290183c0b395381cc56146080af85e"
  head "https://github.com/rhukster/find-symlinks.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "find-symlinks", shell_output("#{bin}/find-symlinks --version")
  end
end
