class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.13"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.13/dtlv-0.9.13-ubuntu-latest-amd64.zip"
    sha256 "5f61d0dff21ab1b07bd09d0f57f96ba6db911f2102573fc46b5d1ef0283b1085"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.13/dtlv-0.9.13-macos-latest-aarch64.zip"
      sha256 "c6df9e674f1354aa2f405dd25c1be2e79c3bd5bbbfd962b9615aaf4da574ddf7"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.13/dtlv-0.9.13-macos-latest-amd64.zip"
      sha256 "eb75e81794c2a98a589374997c960e27ac736d66c93025a5b0561ac50bb09924"
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
