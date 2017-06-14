class SimulateInputMacos < Formula
  desc "simulate input on macos"
  homepage "https://github.com/mainliufeng/simulate-input-macos"
  head "https://github.com/mainliufeng/simulate-input-macos.git"

  depends_on :python

  def install
    system "python", *Language::Python.setup_install_args(prefix)
    libexec.install Dir["*"]
  end
end
