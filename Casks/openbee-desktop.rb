cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.10"
  sha256 arm:   "a8cf602c2f6bd5c39ba652652c47c54815bc273a14b2caf7ed8313e988e34b2e",
         intel: "957c1e229e19871678269fda997223cb96b29318adbd905231abcb4dadbe35bf"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.10/openbee-desktop-1.0.10-darwin-#{arch}.zip"
  name "OpenBee"
  desc "Desktop app with the OpenBee server built in"
  homepage "https://github.com/theopenbee/openbee"

  livecheck do
    skip "Auto-generated on release."
  end

  auto_updates true
  depends_on :macos

  app "OpenBee.app"

  zap trash: [
    "~/Library/Application Support/OpenBee",
    "~/Library/Caches/OpenBee",
    "~/Library/Logs/OpenBee",
  ]
end
