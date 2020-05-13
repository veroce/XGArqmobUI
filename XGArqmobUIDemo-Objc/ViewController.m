//
//  ViewController.m
//  XGArqmobUIDemo-Objc
//
//  Created by Vero on 08/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

#import "ViewController.h"
@import XGArqmobUI;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 //   UIFont * font =  [UIFont bodyBold];
    [[ArmobTheme currentInstance] apply];
}


- (void) showErrorView {
/*
 let page1 = AmTutorialItem(image: "page1", title: "¡Bienvenidos!", body: "¡Hola! Estás a punto de entrar en el Manual de estilos para las Aplicaciones de Turismo de Galicia")
 let page2 = AmTutorialItem(image: "page2", title: "Selecciona los colores", body: "Desde la pantalla de Ajustes podrás cambiar la visualización de la aplicación para ver como quedan los distintos modos que se ofrecen")
 let page3 = AmTutorialItem(image: "page3", title: "Ahorra tiempo", body: "A través de este manual podrás ver como quedan los elementos antes de implementarlos así como consultar para comprobar cual debe de emplearse")
 
  let bundle = Bundle(for: AmTutorialMainVC.self)
 let sb = UIStoryboard(name: "AmTutorial", bundle: bundle)
 if let nc = sb.instantiateInitialViewController() {
     if let vc: AmTutorialMainVC = nc.children.first as? AmTutorialMainVC {
         vc.items = [page1, page2, page3]
     }
     nc.modalPresentationStyle = .fullScreen
     rootViewController?.present(nc, animated: true, completion: nil)
     
 }
 */
    
}


@end
