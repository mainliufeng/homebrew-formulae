class XxNet < Formula
  desc "a web proxy tool"
  homepage "https://github.com/XX-net/XX-Net"
  url "https://codeload.github.com/XX-net/XX-Net/zip/3.7.7"
  version "3.7.7"
  sha256 "d6793c5f68db01e2f59b747a663f63341f2b01af4223ee1050b5e2238aaf3cd0"
  depends_on :python

  def install
    libexec.install Dir["*"]
    (bin/"xxnet").write <<-EOS.undent
      #!/bin/bash
      exec "#{libexec/'start'}" "$@"
    EOS
  end
end
