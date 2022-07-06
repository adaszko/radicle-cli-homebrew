class Core < Formula
  version "0.6.0"
  desc "Radicle CLI"
  homepage "https://app.radicle.network/alt-clients.radicle.eth/radicle-cli"

  url "https://github.com/radicle-dev/radicle-cli/releases/download/v#{version}/radicle-cli-x86_64-apple-darwin.tar.gz"
  sha256 "6f0afb72a8630e3e7f331f1e74c80ba64d7918320d9234aff8acadd79ab68459"

  depends_on "git"

  def install
    bin.install "git-remote-rad"
    bin.install "rad"
    bin.install "rad-account"
    bin.install "rad-auth"
    bin.install "rad-checkout"
    bin.install "rad-clone"
    bin.install "rad-edit"
    bin.install "rad-ens"
    bin.install "rad-gov"
    bin.install "rad-help"
    bin.install "rad-init"
    bin.install "rad-inspect"
    bin.install "rad-issue"
    bin.install "rad-ls"
    bin.install "rad-merge"
    bin.install "rad-patch"
    bin.install "rad-path"
    bin.install "rad-pull"
    bin.install "rad-push"
    bin.install "rad-remote"
    bin.install "rad-reward"
    bin.install "rad-rm"
    bin.install "rad-self"
    bin.install "rad-sync"
    bin.install "rad-track"
    bin.install "rad-untrack"

    man1.install "rad.1.gz"
    man1.install "rad-checkout.1.gz"
    man1.install "rad-sync.1.gz"
  end

  test do
    system "rad"
  end
end
