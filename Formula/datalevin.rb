class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.14"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.14/dtlv-0.9.14-ubuntu-latest-amd64.zip"
    sha256 "373fa538d42aedf6b33898537440e16409af1df2ef22286f852be7d6a2a1d3e4"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.14/dtlv-0.9.14-macos-latest-aarch64.zip"
      sha256 "faf8c66d0239c8095b7ad5ca130c6df408305c9ff7e529189588bc822df734a4"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.14/dtlv-0.9.14-macos-latest-amd64.zip"
      sha256 "61b322a26d70e336bdf580b58ae35bd7756122ae3ef7ba7743c650b948ed6dac"
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
