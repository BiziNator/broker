﻿#pragma checksum "..\..\..\Pages\MenuPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "020F271022FE09C2824628CFEDE67437EDD9210EDD29EC7400938F5FFF7A8D9D"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using BrokerSolution.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace BrokerSolution.Pages {
    
    
    /// <summary>
    /// MenuPage
    /// </summary>
    public partial class MenuPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\Pages\MenuPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnAddClient;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\..\Pages\MenuPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnShowClients;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\Pages\MenuPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnContract;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\Pages\MenuPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnDeal;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/BrokerSolution;component/pages/menupage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\MenuPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.BtnAddClient = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\Pages\MenuPage.xaml"
            this.BtnAddClient.Click += new System.Windows.RoutedEventHandler(this.BtnAddClient_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.BtnShowClients = ((System.Windows.Controls.Button)(target));
            
            #line 30 "..\..\..\Pages\MenuPage.xaml"
            this.BtnShowClients.Click += new System.Windows.RoutedEventHandler(this.BtnShowClients_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.BtnContract = ((System.Windows.Controls.Button)(target));
            
            #line 37 "..\..\..\Pages\MenuPage.xaml"
            this.BtnContract.Click += new System.Windows.RoutedEventHandler(this.BtnContract_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.BtnDeal = ((System.Windows.Controls.Button)(target));
            
            #line 47 "..\..\..\Pages\MenuPage.xaml"
            this.BtnDeal.Click += new System.Windows.RoutedEventHandler(this.BtnDeal_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

