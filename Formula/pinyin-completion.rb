class PinyinCompletion < Formula
  desc "pinyin-completion"
  homepage "https://github.com/petronny/pinyin-completion"
  head "https://github.com/petronny/pinyin-completion.git"

  depends_on :python

  def install
    system "python", *Language::Python.setup_install_args(prefix)
    libexec.install Dir["*"]
  end
end
