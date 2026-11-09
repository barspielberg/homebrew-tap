class Pile < Formula
  desc "Terminal PR board for GitHub"
  homepage "https://github.com/barspielberg/pr-pile"
  version "0.1.0"
  license all_of: ["MIT", "CC-BY-4.0"]
  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.1.0/pile_0.1.0_darwin_arm64.tar.gz"
      sha256 "7b975bdf51458826ab00e5d84d870c634b8046f284d407d30dbf42ce74e718fd"
    end
    on_intel do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.1.0/pile_0.1.0_darwin_amd64.tar.gz"
      sha256 "1c9d08b735adc90afa2475fd7f1eaa19d169b4fdb0e907788401e50c77c0b498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.1.0/pile_0.1.0_linux_arm64.tar.gz"
      sha256 "145bc8ed3827fe438ff474c55c0422ade6da332bab93dbffc148a9cd489e7769"
    end
    on_intel do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.1.0/pile_0.1.0_linux_amd64.tar.gz"
      sha256 "fce6005829f53479fb40500631484a64747007b4c2caee7497bfa72ec58cc000"
    end
  end

  def install
    bin.install "pile" => "pile"
  end

  test do
    output = shell_output("#{bin}/pile --version")
    assert_match "pile 0.1.0 (commit ", output
    assert_match "built ", output
    assert_match "Usage: pile", shell_output("#{bin}/pile --help")
  end
end
