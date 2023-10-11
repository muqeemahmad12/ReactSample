
import DocereeAdSdk

class AdSampleView: UIView, DocereeAdViewDelegate {
  var docereeAdView: DocereeAdView!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addView() {
    docereeAdView = DocereeAdView(with: "320 x 50", and: CGPoint(x: 50, y: 50), adPosition: AdPosition.custom)
    docereeAdView.docereeAdUnitId = "DOC-18-1"
    docereeAdView.delegate = self
    docereeAdView.frame = CGRect(x: 20, y: 0, width: docereeAdView.frame.width, height: docereeAdView.frame.height) //These two lines
    docereeAdView.load(DocereeAdRequest())
    self.addSubview(docereeAdView)
  }
}
