

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet var darkGrey: UIView!
    @IBOutlet var lighGrey: UIView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        lighGrey.backgroundColor = UIColor .lightGray
        darkGrey.backgroundColor = UIColor .darkGray
        
        webView.loadRequest(NSURLRequest(url: NSURL(string: "http://www.google.com")! as URL) as URLRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    @IBAction func searchPressed(_ sender: Any) {
        webView.loadRequest(NSURLRequest(url: NSURL(string: "https://www.google.co.in/search?q=" + textField.text!  + "/"  )!  as URL) as URLRequest)

        
    }
    
    @IBAction func homePressed(_ sender: Any) {
        webView.loadRequest(NSURLRequest(url: NSURL(string: "http://www.google.com")! as URL) as URLRequest)
        textField.text = ""
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    @IBAction func backPressed(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        webView.loadRequest(NSURLRequest(url: NSURL(string: "https://www.google.co.in/search?q=" + textField.text!  + "/"  )!  as URL) as URLRequest)
        textField.resignFirstResponder()
        return true

    }
    }

