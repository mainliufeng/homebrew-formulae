class XxNet < Formula
  desc "a web proxy tool"
  homepage "https://github.com/XX-net/XX-Net"
  url "https://codeload.github.com/XX-net/XX-Net/zip/3.1.19"
  version "3.1.19"
  sha256 "32f7e9e742afedc561fb288f8318a3f4f4a70fa6d349dbd48235938b8c3b70e6"

  depends_on :python

  def install
    libexec.install Dir["*"]
    (bin/"xxnet").write <<-EOS.undent
      #!/bin/bash
      exec "#{libexec/'start'}" "$@"
    EOS
  end
end
