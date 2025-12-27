class Errorblob < Formula
  include Language::Python::Virtualenv

  desc "Never block on the same bug twice - a lightning-fast error database"
  homepage "https://github.com/benguz/errorblob"
  url "https://github.com/benguz/errorblob/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "01adcdaaa683e2a585b421670ff012e231b36c55df5b5ec64563bafd17af461a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/errorblob", "--version"
  end
end

