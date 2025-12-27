class Errorblob < Formula
  include Language::Python::Virtualenv

  desc "Never block on the same bug twice - a lightning-fast error database"
  homepage "https://github.com/benguz/errorblob"
  url "https://github.com/benguz/errorblob/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0def86668ad919bfaa88b83b7ed7b81dc8f9272dc47bfefa8d56222ba566a19f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/errorblob", "--version"
  end
end

