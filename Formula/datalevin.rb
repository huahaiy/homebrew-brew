class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.21"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.21/dtlv-0.5.21-ubuntu-latest-amd64.zip"
    sha256 "6f40929a1caecdd0cdec0883d2ca3a883eec9e64051d2a469d534fce38456bfd"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.21/dtlv-0.5.21-macos-latest-amd64.zip"
    sha256 "e11bcb4d70436d0f1f0264bbdd71e126661d3cab58062247d5ec7ffaaf0def61"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
