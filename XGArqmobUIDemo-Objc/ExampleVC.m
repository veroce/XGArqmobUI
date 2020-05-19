//
//  ExampleVC.m
//  XGArqmobUIDemo-Objc
//
//  Created by Vero on 19/05/2020.
//  Copyright © 2020 Sixtema. All rights reserved.
//

#import "ExampleVC.h"
@import XGArqmobUI;
@interface ExampleVC ()
@property (weak, nonatomic) IBOutlet AmErrorView *erroview;

@end

@implementation ExampleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.erroview showErrorConnectionWithTitle:@"Error de conexión" message: @"Desde la pantalla de Ajustes podrás cambiar la visualización de la aplicación para ver como quedan los distintos modos que se ofrecen" image:nil];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
