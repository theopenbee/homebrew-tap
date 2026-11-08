cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.2"
  sha256 arm:   "6b7b8ba42a3e65df1784396e9f337764b8b16e409799249d8f3a8a636e899837",
         intel: "0d024195abfbc740b0cd44979a11a17105ced5cfc7483d870ce706f34a783ea7"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.2/openbee-desktop-1.0.2-darwin-#{arch}.zip"
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

  caveats <<~EOS
    OpenBee is not notarized yet. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "#{appdir}/OpenBee.app"
  EOS
end
