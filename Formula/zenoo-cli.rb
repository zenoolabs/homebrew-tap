class ZenooCli < Formula
  include Language::Python::Virtualenv

  desc "Zenoo CLI for managing service commands"
  homepage "https://github.com/zenoolabs/zenoo-cli"
  url "https://github.com/zenoolabs/zenoo-cli/archive/refs/tags/0.0.1.tar.gz"
  sha256 "0d414476d2e244e7063ee099cecb43a1e933f345ee3fc421ee6eb8f6a7a521b8"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/zenoo-cli --help")
  end
end