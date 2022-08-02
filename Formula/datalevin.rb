class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.16"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.16/dtlv-0.6.16-ubuntu-latest-amd64.zip"
    sha256 "8f3838dd2c5d703a44c4d3f78a614ef9734b1bb5fe014756a9359d56da465101"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.16/dtlv-0.6.16-macos-latest-amd64.zip"
    sha256 "711c7775cee582459340e7c809b8c59bc10bf8067c871c18ab5f312dd6c2cc84"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
