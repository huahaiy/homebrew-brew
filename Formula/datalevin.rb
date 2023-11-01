class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.21"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.21/dtlv-0.8.21-ubuntu-latest-amd64.zip"
    sha256 "02202fa28954b3e95f0070ec152166474ff1fec316de904d25ab773039be43ce"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.21/dtlv-0.8.21-macos-latest-aarch64.zip"
      sha256 "9db11946e8889eab8da64be0bcb72c3a7929ae6c09dc477f9cdec2bbcf389dcc"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.21/dtlv-0.8.21-macos-latest-amd64.zip"
      sha256 "d1119db795580eced89df6bbc008ed4c0c7fee381032957811bddafdb893effe"
    end
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
