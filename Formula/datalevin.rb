class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.15"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.15/dtlv-0.8.15-ubuntu-latest-amd64.zip"
    sha256 "e7e51768a4176df6b88a30fd2e4d2ee82bf3bb8e27ff26c6f72f3fccdbbe929b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.15/dtlv-0.8.15-macos-latest-aarch64.zip"
      sha256 "6ad7329df773cc573b151e78b15aca0f64302dc9c69b5eb9fcbce95a5f37c82f"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.15/dtlv-0.8.15-macos-latest-amd64.zip"
      sha256 "5c5a13ca115a9acf7fb7c16c7f003b8989dd5049c07de92e78e8b4804b9811b1"
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
