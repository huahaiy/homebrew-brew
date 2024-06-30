class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.8/dtlv-0.9.8-ubuntu-latest-amd64.zip"
    sha256 "699212f39a0024e01a7a91c62fe8089acb3bb2dd6525d15022d0b48519abb862"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.8/dtlv-0.9.8-macos-latest-aarch64.zip"
      sha256 "1129d8536d68045cbbced2261016eb1e40ec2d5482364dba6fb43f5376886c32"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.8/dtlv-0.9.8-macos-latest-amd64.zip"
      sha256 "7a42d5a6efb11c1da9b5ff26f531587ae653969761f89862eff9baa4579ff2d9"
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
