import GoogleMobileAds
import UIKit

public class DynamicFramework: NSObject {
    let ga = GADExtras()
    public override init() {
        super.init()
    }
}

extension DynamicFramework: GADAdSizeDelegate {
    public func adView(_ bannerView: GADBannerView, willChangeAdSizeTo size: GADAdSize) {
        var frame = bannerView.frame
        frame.size.height = CGSizeFromGADAdSize(size).height
        print("new frame \(frame)")
    }
}

