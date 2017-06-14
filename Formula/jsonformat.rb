class Jsonformat < Formula
  desc "format a json"
  homepage "https://github.com/mainliufeng/jsonformat"
  head "https://github.com/mainliufeng/jsonformat.git"

  depends_on :python

  def install
    system "python", *Language::Python.setup_install_args(prefix)
    libexec.install Dir["*"]
  end
end
