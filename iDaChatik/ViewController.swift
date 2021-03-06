//
//  ViewController.swift
//  iDaChatik
//
//  Created by Евгений Ганусенко on 7/5/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
}


import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }

    struct ContainerView: UIViewControllerRepresentable {

        let viewController = ViewController()

        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> ViewController {
            return viewController
        }

        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {

        }
    }
}
