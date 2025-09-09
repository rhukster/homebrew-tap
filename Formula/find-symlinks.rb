class FindSymlinks < Formula
  desc "Fast symlink finder"
  homepage "https://github.com/rhukster/find-symlinks"
  url "https://github.com/rhukster/find-symlinks/archive/refs/tags/1.0.2.tar.gz"
  sha256 "6d731abd507f7b6dd802ea25b5b250e79f3ddc5577545ae4a5bc930e6630c9bf"
  head "https://github.com/rhukster/find-symlinks.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "find-symlinks", shell_output("#{bin}/find-symlinks --version")
  end
end
