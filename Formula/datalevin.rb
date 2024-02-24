class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.29"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.29/dtlv-0.8.29-ubuntu-latest-amd64.zip"
    sha256 "5033279e5e7dd8961061a966449e75d229e978ae9995e2e3b292ef2f1d1c6530"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.29/dtlv-0.8.29-macos-latest-aarch64.zip"
      sha256 "552f9d5e737b30acc57133f05ad899832d115b62a289b13ff16e51722b262a29"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.29/dtlv-0.8.29-macos-latest-amd64.zip"
      sha256 "a9f1c3b53e8af6a698ac00849f51607e5c837c81ca1a58d13b2dbf5321d6dfb7"
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
