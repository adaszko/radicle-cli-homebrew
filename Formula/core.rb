class Core < Formula
  version "0.1.2"
  desc "Radicle CLI"
  homepage "https://app.radicle.network/alt-clients.radicle.eth/radicle-cli"

  url "https://github.com/radicle-dev/radicle-cli/releases/download/v#{version}/radicle-cli-x86_64-apple-darwin.tar.gz"
  sha256 "fa40ad31875fc1071c02da83bd5d61c633b7c0e818989fd1ee85159b1cf3f154"

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
