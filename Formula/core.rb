class Core < Formula
  version "0.1.2"
  desc "Radicle CLI"
  homepage "https://app.radicle.network/alt-clients.radicle.eth/radicle-cli"

  url "https://github.com/radicle-dev/radicle-cli/releases/download/v#{version}/radicle-cli-x86_64-apple-darwin.tar.gz"
  sha256 "4727714cae3571e4fb07be1fb03e4144ddceab74e729a48928c64e6502a9d998"

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
