class PinyinCompletion < Formula
  desc "pinyin-completion"
  homepage "https://github.com/petronny/pinyin-completion"
  head "https://github.com/petronny/pinyin-completion.git"

  depends_on "python@2"

  def install
    system "python2", *Language::Python.setup_install_args(prefix)
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
    bash:
      source /usr/local/opt/pinyin-completion/libexec/shell/pinyin-comp.bash
    zsh:
      source /usr/local/opt/pinyin-completion/libexec/shell/pinyin-comp.zsh
    EOS
  end

end
