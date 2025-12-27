class Errorblob < Formula
  include Language::Python::Virtualenv

  desc "Never block on the same bug twice - a lightning-fast error database"
  homepage "https://github.com/benguz/errorblob"
  url "https://github.com/benguz/errorblob/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "680b882061590b6b40ca42787346f68477cccde96b5897ae17989b316c7ec46c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/errorblob", "--version"
  end
end

