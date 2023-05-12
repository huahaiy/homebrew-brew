class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.16"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.16/dtlv-0.8.16-ubuntu-latest-amd64.zip"
    sha256 "a0b0c7f1cda5d4d14003d925dd67dc331e08863a382e6b18ee35fbf7f2674a65"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.16/dtlv-0.8.16-macos-latest-aarch64.zip"
      sha256 "709d7837dd29ba78b798779082314374efc40423e5eb5c33d359583cc759d100"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.16/dtlv-0.8.16-macos-latest-amd64.zip"
      sha256 "1b15f147bd4bc3d3e52ac0126881c1e9221020a094fdd914d70a7adf0dd545ce"
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
