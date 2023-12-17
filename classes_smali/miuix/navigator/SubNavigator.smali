.class abstract Lmiuix/navigator/SubNavigator;
.super Lmiuix/navigator/Navigator;
.source "SubNavigator.java"


# instance fields
.field private final mFragmentController:Lmiuix/navigator/NavigatorFragmentController;

.field private final mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/Navigator;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 6
    new-instance p1, Lmiuix/navigator/NavigatorFragmentController;

    .line 8
    invoke-direct {p1, p0}, Lmiuix/navigator/NavigatorFragmentController;-><init>(Lmiuix/navigator/SubNavigator;)V

    .line 11
    iput-object p1, p0, Lmiuix/navigator/SubNavigator;->mFragmentController:Lmiuix/navigator/NavigatorFragmentController;

    .line 13
    return-void
.end method


# virtual methods
.method public addCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public addCategory(Lmiuix/navigator/Navigator$Category;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addCategory(Lmiuix/navigator/Navigator$Category;I)V

    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->addLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addLabel(Lmiuix/navigator/Navigator$Label;I)V

    return-void
.end method

.method public addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 6
    return-void
.end method

.method public addNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->addNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    .line 6
    return-void
.end method

.method public addNavigatorSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 3

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;)V

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;I)V

    return-void
.end method

.method public applyBottomNavigationBlur(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->applyBottomNavigationBlur(Z)V

    .line 6
    return-void
.end method

.method public canPopSecondaryContent()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->canPopSecondaryContent()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public closeContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->closeContent(Z)V

    return-void
.end method

.method public closeContent(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->closeContent(Z)V

    return-void
.end method

.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->closeNavigation(Z)V

    return-void
.end method

.method public bridge synthetic getBaseNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public getBaseNavigator()Lmiuix/navigator/NavigatorImpl;
    .registers 2

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    return-object v0
.end method

.method public getBottomTabMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getContentVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getContentVisibility()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFragmentController()Lmiuix/navigator/NavigatorFragmentController;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mFragmentController:Lmiuix/navigator/NavigatorFragmentController;

    .line 3
    return-object v0
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorFragmentController;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNavigationMenu()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMenu()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNavigationMode()Lmiuix/navigator/Navigator$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNavigationVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getNavigationVisibility()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOnBackPressedCallback()Landroidx/activity/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getOnBackPressedCallback()Landroidx/activity/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSecondaryContentVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getSecondaryContentVisibility()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrategy()Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->getStrategy()Lmiuix/navigator/NavigatorStrategy;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public immerseSecondaryContent(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->immerseSecondaryContent(Z)V

    .line 6
    return-void
.end method

.method public isContentOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isContentOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract isFocused()Z
.end method

.method public isNavigationOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->isNavigationOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract isUserFocused()Z
.end method

.method public navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p0}, Lmiuix/navigator/NavigatorImpl;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V

    .line 6
    return-void
.end method

.method public newCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newCategory(II)Lmiuix/navigator/Navigator$Category;
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->newCategory(II)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->newLabel(I)Lmiuix/navigator/Navigator$Label;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public newTab()Lmiuix/navigator/BottomTab;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->newTab()Lmiuix/navigator/BottomTab;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onBottomNavigationVisibilityChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onContentVisibilityChanged(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    return-void
.end method

.method public onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorFragmentController;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lmiuix/navigator/SubNavigator$1;

    .line 7
    invoke-direct {v0, p0}, Lmiuix/navigator/SubNavigator$1;-><init>(Lmiuix/navigator/SubNavigator;)V

    .line 10
    iput-object v0, p1, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/p;

    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/navigator/n;

    .line 7
    invoke-direct {v1, p0}, Lmiuix/navigator/n;-><init>(Lmiuix/navigator/SubNavigator;)V

    .line 10
    invoke-virtual {v0, v1}, Lmiuix/navigator/NavigatorFragmentController;->setOnAttachListener(Lmiuix/navigator/NavigatorFragmentController$OnAttachListener;)V

    .line 13
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorFragmentController;->performRestore(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lmiuix/navigator/NavigatorFragmentController;->attachHost()V

    .line 27
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorFragmentController;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 8
    return-void
.end method

.method public onSecondaryContentVisibilityChanged(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    return-void
.end method

.method public openContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->openContent(Z)V

    return-void
.end method

.method public openContent(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->openContent(Z)V

    return-void
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->openNavigation(Z)V

    return-void
.end method

.method public removeCategory(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeCategory(I)V

    return-void
.end method

.method public removeCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public removeLabel(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeLabel(I)V

    return-void
.end method

.method public removeLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 6
    return-void
.end method

.method public removeNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->removeNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    .line 6
    return-void
.end method

.method public removeNavigatorSwitch(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public abstract requestFocus(Z)V
.end method

.method public abstract requestUserFocus(Z)Z
.end method

.method public selectTab(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->selectTab(I)V

    .line 6
    return-void
.end method

.method public setBottomNavigationBackgroundVisible(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setBottomNavigationBackgroundVisible(Z)V

    .line 6
    return-void
.end method

.method public setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V

    .line 6
    return-void
.end method

.method public setBottomTabStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setBottomTabStyle(I)V

    .line 6
    return-void
.end method

.method public setContentExpandedMaxWidthWithDp(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setContentExpandedMaxWidthWithDp(I)V

    .line 6
    return-void
.end method

.method public setContentExpandedPaddingWithDp(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setContentExpandedPaddingWithDp(I)V

    .line 6
    return-void
.end method

.method public setCrossBackground(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setCrossBackground(I)V

    return-void
.end method

.method public setCrossBackground(Landroid/view/View;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setCrossBackground(Landroid/view/View;)V

    return-void
.end method

.method public setHostState(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/SubNavigator;->getFragmentController()Lmiuix/navigator/NavigatorFragmentController;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorFragmentController;->setHostState(I)V

    .line 8
    return-void
.end method

.method public setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V

    .line 6
    return-void
.end method

.method public setNavigationMenu(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setNavigationMenu(I)V

    .line 6
    return-void
.end method

.method public setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    .line 6
    return-void
.end method

.method public setSplitAnimationMaskBlurRadiusWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setSplitAnimationMaskBlurRadiusWithPx(I)V

    .line 6
    return-void
.end method

.method public setSplitAnimationStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setSplitAnimationStyle(I)V

    .line 6
    return-void
.end method

.method public setStrategy(Lmiuix/navigator/NavigatorStrategy;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setStrategy(Lmiuix/navigator/NavigatorStrategy;)V

    .line 6
    return-void
.end method

.method public setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V

    .line 6
    return-void
.end method

.method public toggleContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->toggleContent(Z)V

    return-void
.end method

.method public toggleContent(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->toggleContent(Z)V

    return-void
.end method

.method public toggleNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->toggleNavigation(Z)V

    return-void
.end method

.method public toggleNavigation(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/SubNavigator;->mNavigatorImpl:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0, p1}, Lmiuix/navigator/NavigatorImpl;->toggleNavigation(Z)V

    return-void
.end method
