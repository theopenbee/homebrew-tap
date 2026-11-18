cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.8"
  sha256 arm:   "d6daffbc6b3af55747ccae0cf447e1020d2f7ec1b043186bcd3d3cee86f5ea00",
         intel: "c45e4726dc8339b2cd556b212dd2c7df2953af8a2f31872c5cb382334924c00d"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.8/openbee-desktop-1.0.8-darwin-#{arch}.zip"
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
