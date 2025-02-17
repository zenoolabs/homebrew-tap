class ZenooCli < Formula
  include Language::Python::Virtualenv

  desc "Zenoo CLI for managing service commands"
  homepage "https://github.com/zenoolabs/zenoo-cli"
  url "https://github.com/zenoolabs/zenoo-cli/archive/refs/tags/0.0.1.tar.gz"
  sha256 "0d414476d2e244e7063ee099cecb43a1e933f345ee3fc421ee6eb8f6a7a521b8"
  license "MIT"

  depends_on "python@3.9"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zenoo-cli --help")
  end
end