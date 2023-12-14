class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.25"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.25/dtlv-0.8.25-ubuntu-latest-amd64.zip"
    sha256 "273601ce81fef679c5382e5ff21c7e3d8495a90d6813b6a0d5367327e2b5ee40"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.25/dtlv-0.8.25-macos-latest-aarch64.zip"
      sha256 "91cee7a67b822483ba1633a6721cf00852296ef6ada97e0f5546cfb227021da6"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.25/dtlv-0.8.25-macos-latest-amd64.zip"
      sha256 "a1c77684fe733c12fedbfed3728957a3a14caea420d8f0ce1744d0408a954b49"
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
