class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.27"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.27/dtlv-0.9.27-ubuntu-22.04-amd64.zip"
    sha256 "48b1e75a52441c5d11cdbad9b98c0daf6763c011d960cc98881dae7ae091dbea"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.27/dtlv-0.9.27-macos-latest-aarch64.zip"
      sha256 "e5fe9e66f7fb67993a20b885079d1a1f8aebf5be634eb2a2e45f3275a9af6081"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.27/dtlv-0.9.27-macos-13-amd64.zip"
      sha256 "2a4f89758d39c87e60abe2ea297478cfb9417cf6d84992177d7e48ba28f84627"
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
