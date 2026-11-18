cask "leaf" do
  version "0.2.0"
  sha256 "902f7f075eabba6c06ec24e1d5109a358b58a5a7c546fe3b57dd6044edbd11fc"

  url "https://github.com/robhurring/leaf/releases/download/v#{version}/leaf-#{version}-macos-universal.zip"
  name "leaf"
  desc "Markdown reader for folders of notes and docs"
  homepage "https://github.com/robhurring/leaf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "leaf reader.app"
  binary "#{appdir}/leaf reader.app/Contents/MacOS/leaf"

  zap trash: "~/.config/leaf"
end
