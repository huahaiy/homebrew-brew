class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.26"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.26/dtlv-0.6.26-ubuntu-latest-amd64.zip"
    sha256 "b785c97d233680a89468b48b74ec87a397c74fc5bb2c136ea88244df6ca215cd"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.26/dtlv-0.6.26-macos-latest-amd64.zip"
    sha256 "fdf0a3bf89bddd28ba40da7771a2fa07f2f7f338136297462105ce6e0d459694"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
