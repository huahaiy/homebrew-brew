class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.7.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.7.8/dtlv-0.7.8-ubuntu-latest-amd64.zip"
    sha256 "a76c57eca4ee72f9f8076db1f3e6de649ea5135f8788f9c8e4bfefc2dd870eaf"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.7.8/dtlv-0.7.8-macos-latest-amd64.zip"
    sha256 "7b010bbedf94f03f1e967be6b6dfc5cbc3cac4018ca3be8ea68db306325d5814"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
