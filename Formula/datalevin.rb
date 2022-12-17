class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.7.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.7.7/dtlv-0.7.7-ubuntu-latest-amd64.zip"
    sha256 "f76548e19249030eb57a5a573de218fcf54548effd08c8a0567942233de4c231"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.7.7/dtlv-0.7.7-macos-latest-amd64.zip"
    sha256 "f4ef939e785a6985ad927bb527fde858866fffec28a3815dd525399d22b8a0d2"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
