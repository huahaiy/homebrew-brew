class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.22"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.22/dtlv-0.8.22-ubuntu-latest-amd64.zip"
    sha256 "57b15e53fe1ca9808fb6b02d69d1e9512ee90d7faeb6f569fedcd381a0282aef"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.22/dtlv-0.8.22-macos-latest-aarch64.zip"
      sha256 "9d7607b8ee2826180405937466e682113701b8d73a1a07c01b9e2d8f4d4285d2"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.22/dtlv-0.8.22-macos-latest-amd64.zip"
      sha256 "1a12e2837c2f2b178986ceccbd861d6b50b18a95d29f32b61130ac6f2c775337"
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
