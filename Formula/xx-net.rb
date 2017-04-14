class XxNet < Formula
  desc "a web proxy tool"
  homepage "https://github.com/XX-net/XX-Net"
  url "https://codeload.github.com/XX-net/XX-Net/zip/3.3.0"
  version "3.3.0"
  sha256 "078dbaa301e877ef36e835d837023341949dc6b28b8ac0a61c15cfbacd43bcfe"

  depends_on :python

  def install
    libexec.install Dir["*"]
    (bin/"xxnet").write <<-EOS.undent
      #!/bin/bash
      exec "#{libexec/'start'}" "$@"
    EOS
  end
end
