cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.12"
  sha256 arm:   "5af070a500e4e1ec712b25a022cebb8045e8c46d49f62d134b9bd017dab34497",
         intel: "2588ac2fac51a10df05e28f75d8a28363393add144c0d78c2c6f48babb9dc60b"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.12/openbee-desktop-1.0.12-darwin-#{arch}.zip"
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
