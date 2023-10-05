//
//  AnimationsVC.swift
//  HT23_Animations
//
//  Created by Apple on 5.10.23.
//
import Lottie
import UIKit


class AnimationsVC: UIViewController {
    // MARK: - property
    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet private weak var coreAnimationsView: UIView!
    @IBOutlet weak var coreAnimationsLbl: UILabel!
 
    @IBOutlet weak var lottienimationsBtn: UIButton!
    @IBOutlet weak var coreAnimationsBtn: UIButton!
    
    //создаем новую view
    var lottieAnimationsView: AnimationView!
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoreAnimationView()
        lottieAnimationViewSetup()
        
    }
    
    // MARK: - actions
    @IBAction func coreAnimBtn(_ sender: UIButton) {
       
        sender.pulsate()
    }
    
    @IBAction func lottieAnimBtn(_ sender: UIButton) { }
    
    // MARK: - private func
    //вызываем анимацию у салого объекта UIView

    private func setupCoreAnimationView () {
        UIView.animate(withDuration: 1, delay: 0,
                       options: [.autoreverse, .repeat]) { [weak self] in
            self?.coreAnimationsView.frame.origin.x+=30
        }
    }
    
    override func lottieAnimationViewSetup() {
//        lottieAnimationsView = .init(name: <#T##String#>)
         
    }
 
    

    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
