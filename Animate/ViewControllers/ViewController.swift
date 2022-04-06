//
//  ViewController.swift
//  Animate
//
//  Created by Pavel Metelin on 4/5/22.
//

import Spring

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var animateView: SpringView!
    @IBOutlet var labelPreset: UILabel!
    @IBOutlet var labelCurve: UILabel!
    @IBOutlet var labelForce: UILabel!
    @IBOutlet var labelDelay: UILabel!
    @IBOutlet var labelDuration: UILabel!
    
    private var animation = Animation.getAnimation()
    private var btnTitle = ""
    
    //MARK: - Override method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateView.layer.cornerRadius = 20
        setParamAnimateLabels()
    }
    
    //MARK: - IB Actions
    @IBAction func startAnimateButtonPressed(_ sender: UIButton) {
        setParamAnimateLabels()
        animateView.animation = animation.preset
        animateView.curve = animation.curve
        animateView.force = animation.force
        animateView.delay = animation.delay
        animateView.duration = animation.duration
        animateView.animate()
        
        animation = Animation.getAnimation()
        btnTitle = "Run: \(animation.preset)"
        sender.setTitle(btnTitle, for: .normal)
    }
}

extension ViewController {
    func setParamAnimateLabels() {
        labelPreset.text = "preset: \(animation.preset)"
        labelCurve.text = "curve: \(animation.curve)"
        labelForce.text = "force: \(String(format: "%.1f", animation.force))"
        labelDelay.text = "delay: \(String(format: "%.1f", animation.delay))"
        labelDuration.text = "duration: \(String(format: "%.1f", animation.duration))"
    }
}

