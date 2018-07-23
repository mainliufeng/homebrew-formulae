class Termtile < Formula
  desc "Terminal window manager for OS X"
  homepage "https://github.com/apaszke/termtile"
  head "https://github.com/apaszke/termtile.git"

  def install
    libexec.install Dir["*"]
    system "cd #{libexec} && printf 'iTerm2\\n.\\nn\\n' | ./install.sh"
    system "cd #{libexec} && /usr/bin/cc -framework AppKit -o getScreenInfo src/getScreenInfo.m"
    (bin/"m").write <<~EOS
      #!/bin/bash
      osascript #{libexec/'maximize.scpt'};clear;
    EOS

  end

  test do
    system "false"
  end
end
