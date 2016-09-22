class Termtile < Formula
  desc "termtile is a set of scripts, which set you free from your mouse and touchpad. Don't distract yourself and manage all your terminal windows with a handful of commands."
  homepage "https://github.com/apaszke/termtile"
  head "https://github.com/apaszke/termtile.git"

  def install
    libexec.install Dir["*"]
    system "cd #{libexec} && printf 'iTerm2\\n.\\nn\\n' | ./install.sh"
    system "cd #{libexec} && /usr/bin/cc -framework AppKit -o getScreenInfo src/getScreenInfo.m"
    (bin/"m").write <<-EOS.undent
      #!/bin/bash
      osascript #{libexec/'maximize.scpt'};clear;
    EOS

  end

  test do
    system "false"
  end
end
