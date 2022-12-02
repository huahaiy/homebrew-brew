class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.27"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.27/dtlv-0.6.27-ubuntu-latest-amd64.zip"
    sha256 "590f35f02fdee187b459e712bb6874fc3df3f623fe6dd4ab980bc75503e3e622"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.27/dtlv-0.6.27-macos-latest-amd64.zip"
    sha256 "9025141bcf6275754347d8a1a9e7b0a633daebebdfa4d01931c105a2645457aa"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
