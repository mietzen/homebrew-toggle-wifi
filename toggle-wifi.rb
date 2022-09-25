class ToggleWifi < Formula

  desc "Toggle Wifi On/Off if ethernet is dis-/connected."
  homepage ""
  url "https://github.com/mietzen/toggle-wifi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "602ee1401539354c9e368dcef0015dcf54fc18e829033fa9ef5f008dcaa07bbc"
  license "MIT"

  depends_on "python@3.10"
  
  def install
    inreplace "homebrew.mxcl.toggle-wifi.plist", "$TOGGLE-WIFI-PATH$", "#{HOMEBREW_PREFIX}/bin/toggle-wifi"
    bin.install "toggle-wifi" 
    prefix.install "toggle-wifi.py"
    prefix.install Dir["notifier"]    
    prefix.install "README.md"
    prefix.install "LICENSE"
    prefix.install "homebrew.mxcl.toggle-wifi.plist"
    prefix.install_symlink "homebrew.mxcl.toggle-wifi.plist" => "#{plist_name}.plist"
  end

  test do
    system "false"
  end
end
