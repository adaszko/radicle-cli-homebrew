class Core < Formula
  version "0.4.0"
  desc "Radicle CLI"
  homepage "https://app.radicle.network/alt-clients.radicle.eth/radicle-cli"

  url "https://github.com/radicle-dev/radicle-cli/releases/download/v#{version}/radicle-cli-x86_64-apple-darwin.tar.gz"
  sha256 "10ea0d117093a8709cdf8ec81bcfc772f96d0017867c28ae0418c58ae336d13f"

  depends_on "libusb"
  depends_on "openssl@1.1"
  depends_on "git"

  def install
    bin.install "rad-self"
    bin.install "rad-account"
    bin.install "rad-sync"
    bin.install "rad-help"
    bin.install "rad-ens"
    bin.install "rad-push"
    bin.install "rad-pull"
    bin.install "rad-clone"
    bin.install "rad-inspect"
    bin.install "rad-remote"
    bin.install "rad-rm"
    bin.install "rad"
    bin.install "rad-auth"
    bin.install "rad-ls"
    bin.install "rad-init"
    bin.install "rad-checkout"
    bin.install "rad-track"
    bin.install "rad-untrack"
    bin.install "git-remote-rad"

    man1.install "rad.1.gz"
    man1.install "rad-checkout.1.gz"
    man1.install "rad-sync.1.gz"
  end

  test do
    system "rad"
  end
end
