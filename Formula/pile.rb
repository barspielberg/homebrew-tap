class Pile < Formula
  desc "Terminal PR board for GitHub"
  homepage "https://github.com/barspielberg/pr-pile"
  version "0.2.0"
  license all_of: ["MIT", "CC-BY-4.0"]
  depends_on "gh"

  on_macos do
    on_arm do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.2.0/pile_0.2.0_darwin_arm64.tar.gz"
      sha256 "74a3c6789ca2e3a502b8024098f84e4cdf5961d9ec8b30e1aa7034b3ed32afdc"
    end
    on_intel do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.2.0/pile_0.2.0_darwin_amd64.tar.gz"
      sha256 "9e5622638ba26fb06eb6663601bd8c7674fab13832a7dc56adebba14340b4d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.2.0/pile_0.2.0_linux_arm64.tar.gz"
      sha256 "cffe3363225346323ad5a65bc01dfbf18f4bba3515be478d0c91aa722e51bf27"
    end
    on_intel do
      url "https://github.com/barspielberg/pr-pile/releases/download/v0.2.0/pile_0.2.0_linux_amd64.tar.gz"
      sha256 "a4d6f564e92c0ed921baa1ec2205c5076219942e8a1c5a4dde551d5f40d01497"
    end
  end

  def install
    bin.install "pile" => "pile"
  end

  test do
    output = shell_output("#{bin}/pile --version")
    assert_match "pile 0.2.0 (commit ", output
    assert_match "built ", output
    assert_match "Usage: pile", shell_output("#{bin}/pile --help")
  end
end
