.class public Lmiuix/navigator/app/MiuixNavigatorImpl;
.super Lmiuix/navigator/NavigatorImpl;
.source "MiuixNavigatorImpl.java"


# instance fields
.field private mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

.field private mBottomTabStyle:I

.field private mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

.field private mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

.field private mInitTabMenuId:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorImpl;-><init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInitTabMenuId:I

    .line 7
    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    .line 10
    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomTabStyle:I

    .line 12
    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 14
    new-instance p1, Lcom/android/cloud/fragment/presenter/b;

    .line 16
    const/16 p2, 0x12

    .line 18
    invoke-direct {p1, p0, p2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    .line 21
    iput-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 23
    return-void
.end method

.method private ensureBottomNavigationExist()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 3
    if-nez v0, :cond_5b

    .line 5
    sget v0, Lmiuix/navigator/R$layout;->miuix_bottom_navigation:I

    .line 7
    iget v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomTabStyle:I

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_12

    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v1, v3, :cond_f

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    sget v0, Lmiuix/navigator/R$layout;->miuix_bottom_navigation_wide_land:I

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sget v0, Lmiuix/navigator/R$layout;->miuix_bottom_navigation_wide_port:I

    .line 21
    :goto_14
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 36
    iput-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 38
    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 40
    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 43
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_56

    .line 50
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_56

    .line 56
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 58
    invoke-virtual {v0, v2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setSupportBlur(Z)V

    .line 61
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    sget v3, Lmiuix/appcompat/R$attr;->bgBlurOptions:I

    .line 67
    invoke-static {v0, v3, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    .line 70
    move-result v0

    .line 71
    and-int/lit8 v0, v0, 0x2

    .line 73
    if-eqz v0, :cond_50

    .line 75
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 77
    invoke-virtual {v0, v2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setEnableBlur(Z)V

    .line 80
    goto :goto_5b

    .line 81
    :cond_50
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 83
    invoke-virtual {v0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setEnableBlur(Z)V

    .line 86
    goto :goto_5b

    .line 87
    :cond_56
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 89
    invoke-virtual {v0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setSupportBlur(Z)V

    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method

.method public static synthetic l(Lmiuix/navigator/app/MiuixNavigatorImpl;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/navigator/app/MiuixNavigatorImpl;->lambda$new$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1a

    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "miuix.miracle:bottomTabId"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->findTab(I)Lmiuix/navigator/BottomTab;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public addTab(Lmiuix/navigator/BottomTab;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;)V

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenu;->add(Lmiuix/navigator/BottomTab;)Landroid/view/MenuItem;

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;I)V
    .registers 3

    .line 4
    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;I)V

    .line 5
    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    .line 6
    invoke-virtual {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {p2, p1}, Lmiuix/navigator/navigation/NavigationBarMenu;->add(Lmiuix/navigator/BottomTab;)Landroid/view/MenuItem;

    return-void
.end method

.method public applyBottomNavigationBlur(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public getBottomTabMenu()Landroid/view/Menu;
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 6
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public hideBottomTab(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    :goto_d
    invoke-virtual {v0, p1, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->hide(ZZ)V

    .line 17
    :cond_10
    return-void
.end method

.method public initExtraViews()V
    .registers 6

    .line 1
    iget v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInitTabMenuId:I

    .line 3
    if-eqz v0, :cond_40

    .line 5
    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 7
    invoke-virtual {v1, v0}, Lmiuix/navigator/navigation/NavigationBarView;->inflateMenu(I)V

    .line 10
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    .line 12
    if-eqz v0, :cond_40

    .line 14
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 16
    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lmiuix/navigator/navigation/NavigationBarMenu;

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_16
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_40

    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_2d

    .line 40
    const-string v4, "miuix.miracle:bottomTabId"

    .line 42
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    move-result v2

    .line 46
    :cond_2d
    iget-object v3, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    .line 48
    invoke-interface {v3, v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;->onCreateNavigatorInfo(I)Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->newTab()Lmiuix/navigator/BottomTab;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, v2}, Lmiuix/navigator/BottomTab;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 59
    invoke-super {p0, v3}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_16

    .line 65
    :cond_40
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->getBottomNavigation()Lmiuix/navigator/BottomNavigation;

    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 75
    if-eq v0, v1, :cond_55

    .line 77
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 83
    invoke-virtual {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->setBottomNavigation(Lmiuix/navigator/BottomNavigation;)V

    .line 86
    :cond_55
    return-void
.end method

.method public selectTab(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorImpl;->selectTab(I)V

    .line 4
    iget-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 6
    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarView;->getPresenter()Lmiuix/navigator/navigation/NavigationBarPresenter;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 14
    return-void
.end method

.method public setBottomNavigationBackgroundVisible(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    .line 4
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setBackgroundVisible(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInitTabMenuId:I

    .line 3
    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    .line 10
    :cond_9
    return-void
.end method

.method public setBottomTabStyle(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomTabStyle:I

    .line 3
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setLayoutStyle(I)V

    .line 10
    :cond_9
    return-void
.end method

.method public setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 4

    .line 1
    if-nez p1, :cond_a

    .line 3
    iget-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 5
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 13
    new-instance v1, Lmiuix/navigator/app/MiuixNavigatorImpl$1;

    .line 15
    invoke-direct {v1, p0, p1}, Lmiuix/navigator/app/MiuixNavigatorImpl$1;-><init>(Lmiuix/navigator/app/MiuixNavigatorImpl;Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 21
    return-void
.end method

.method public showBottomTab()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    :goto_d
    invoke-virtual {v0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->show(Z)V

    .line 17
    :cond_10
    return-void
.end method
