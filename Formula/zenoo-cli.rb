class ZenooCli < Formula
  include Language::Python::Virtualenv

  desc "Zenoo CLI for managing service commands"
  homepage "https://github.com/zenoolabs/zenoo-cli"
  url "https://github.com/zenoolabs/zenoo-cli/archive/refs/tags/0.0.1.tar.gz"
  sha256 "0d414476d2e244e7063ee099cecb43a1e933f345ee3fc421ee6eb8f6a7a521b8"
  license "MIT"

  depends_on "python@3.9"

  resource "click" do
    url "https://files.pythonhosted.org/packages/b9/2e/0090cbf739cee7d23781ad4b89a9894a41538e4fcf4c31dcdd705b78eb8b/click-8.1.8.tar.gz"
    sha256 "ed53c9d8990d83c2a27deae68e4ee337473f6330c040a31d4225c9574d16096a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zenoo-cli --help")
  end
end