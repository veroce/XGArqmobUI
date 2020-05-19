//
//  ViewController.m
//  XGArqmobUIDemo-Objc
//
//  Created by Vero on 08/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

#import "ViewController.h"
#import "ExampleVC.h"
@import XGArqmobUI;
@interface ViewController ()
@property (weak, nonatomic) IBOutlet AmErrorView *errorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.errorView showErrorConnectionWithTitle:@"Error de conexión" message: @"Sin conexión" image:nil];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    ExampleVC * vc = [[ExampleVC alloc] initWithNibName:@"ExampleVC" bundle:nil];
    UINavigationController * nc = [[UINavigationController alloc] initWithRootViewController:vc];
    nc.navigationBar.prefersLargeTitles = true;
    nc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:nc animated:YES completion:nil];
    
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
