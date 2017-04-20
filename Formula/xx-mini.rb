class XxMini < Formula
  desc "XX-Net 精简版"
  homepage "https://github.com/xyuanmu/XX-Mini"
  url "https://github.com/xyuanmu/XX-Mini/releases/download/1.2.9/XX-Mini_linux_darwin_v1.2.9.zip"
  sha256 "3c715edfa3f7dcd23e4dfcf9c293583dce3fbde95c77494aa818fdf48016c43e"

  depends_on :python

  def install
    libexec.install Dir["*"]
    system "cd #{libexec} && mkdir lib && mv lib.egg lib && cd lib && unzip lib.egg"
    (bin/"xxmini").write <<-EOS.undent
      #!/bin/bash
      python "#{libexec/'proxy.py'}"
    EOS
  end
end
