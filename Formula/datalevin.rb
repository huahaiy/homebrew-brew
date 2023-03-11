class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.6"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.6/dtlv-0.8.6-ubuntu-latest-amd64.zip"
    sha256 "551df4fc0f8e4ea6666cbdce147a02fa81c1855da5665d483727bf27f57abc6d"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.6/dtlv-0.8.6-macos-latest-aarch64.zip"
      sha256 "002963c6ff027aa1098cd2e56a9a7f40d4b444413b8c6d3cfa035a837ab2bcf3"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.6/dtlv-0.8.6-macos-latest-amd64.zip"
      sha256 "594b4666c65589c40dab8777805fb7d37322d78f288c99d6e4d14b16b31473d4"
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
