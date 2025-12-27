class Errorblob < Formula
  include Language::Python::Virtualenv

  desc "Never block on the same bug twice - a lightning-fast error database"
  homepage "https://github.com/benguz/errorblob"
  url "https://github.com/benguz/errorblob/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3aedfe46cfd169d467bdfcafaabec4c0c403191cbd02ee7eca7308a4c150c1be"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/errorblob", "--version"
  end
end

