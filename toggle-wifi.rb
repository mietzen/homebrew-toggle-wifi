class ToggleWifi < Formula

  desc "Toggle Wifi On/Off if ethernet is dis-/connected."
  homepage ""
  url "https://github.com/mietzen/toggle-wifi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cd6900fa3b12a2c6cfaacda05cdc173b31506f2aca086ee078c44d7f7a44af6b"
  license "MIT"

  depends_on "python@3.10"
  
  def install
    inreplace "service.plist", "$TOGGLE-WIFI-PATH$", "#{HOMEBREW_PREFIX}/bin/toggle-wifi"
    bin.install "toggle-wifi" 
    prefix.install "toggle-wifi.py"
    prefix.install Dir["notifier"]    
    prefix.install "README.md"
    prefix.install "LICENSE"
    prefix.install "service.plist"
    prefix.install_symlink "service.plist" => "#{plist_name}.plist"
  end

  test do
    system "false"
  end
end
