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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/navigator/NavigatorImpl;-><init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInitTabMenuId:I

    const/4 p2, 0x0

    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomTabStyle:I

    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    new-instance p1, Lcom/android/cloud/fragment/presenter/b;

    const/16 p2, 0x12

    invoke-direct {p1, p0, p2}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    return-void
.end method

.method private ensureBottomNavigationExist()V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-nez v0, :cond_5b

    sget v0, Lmiuix/navigator/R$layout;->miuix_bottom_navigation:I

    iget v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomTabStyle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    const/4 v3, 0x3

    if-eq v1, v3, :cond_f

    goto :goto_14

    :cond_f
    sget v0, Lmiuix/navigator/R$layout;->miuix_bottom_navigation_wide_land:I

    goto :goto_14

    :cond_12
    sget v0, Lmiuix/navigator/R$layout;->miuix_bottom_navigation_wide_port:I

    :goto_14
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setSupportBlur(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lmiuix/appcompat/R$attr;->bgBlurOptions:I

    invoke-static {v0, v3, v1}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_50

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v2}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setEnableBlur(Z)V

    goto :goto_5b

    :cond_50
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setEnableBlur(Z)V

    goto :goto_5b

    :cond_56
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setSupportBlur(Z)V

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

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 v0, -0x1

    const-string v1, "miuix.miracle:bottomTabId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->findTab(I)Lmiuix/navigator/BottomTab;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/BottomTab;->getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addTab(Lmiuix/navigator/BottomTab;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;)V

    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    invoke-virtual {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarMenu;->add(Lmiuix/navigator/BottomTab;)Landroid/view/MenuItem;

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;I)V

    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    invoke-virtual {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    move-result-object p2

    check-cast p2, Lmiuix/navigator/navigation/NavigationBarMenu;

    invoke-virtual {p2, p1}, Lmiuix/navigator/navigation/NavigationBarMenu;->add(Lmiuix/navigator/BottomTab;)Landroid/view/MenuItem;

    return-void
.end method

.method public applyBottomNavigationBlur(Z)V
    .registers 3

    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->applyBlur(Z)V

    :cond_a
    return-void
.end method

.method public getBottomTabMenu()Landroid/view/Menu;
    .registers 2

    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public hideBottomTab(Z)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, p1, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->hide(ZZ)V

    :cond_10
    return-void
.end method

.method public initExtraViews()V
    .registers 6

    iget v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInitTabMenuId:I

    if-eqz v0, :cond_40

    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1, v0}, Lmiuix/navigator/navigation/NavigationBarView;->inflateMenu(I)V

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lmiuix/navigator/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/navigation/NavigationBarMenu;

    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    const/4 v2, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string v4, "miuix.miracle:bottomTabId"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_2d
    iget-object v3, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    invoke-interface {v3, v2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;->onCreateNavigatorInfo(I)Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v2

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->newTab()Lmiuix/navigator/BottomTab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiuix/navigator/BottomTab;->setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    invoke-super {p0, v3}, Lmiuix/navigator/NavigatorImpl;->addTab(Lmiuix/navigator/BottomTab;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_40
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->getBottomNavigation()Lmiuix/navigator/BottomNavigation;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-eq v0, v1, :cond_55

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->setBottomNavigation(Lmiuix/navigator/BottomNavigation;)V

    :cond_55
    return-void
.end method

.method public selectTab(I)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/navigator/NavigatorImpl;->selectTab(I)V

    iget-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1}, Lmiuix/navigator/navigation/NavigationBarView;->getPresenter()Lmiuix/navigator/navigation/NavigationBarPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setBottomNavigationBackgroundVisible(Z)V
    .registers 3

    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->setBackgroundVisible(Z)V

    :cond_a
    return-void
.end method

.method public setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInitTabMenuId:I

    iput-object p2, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mInfoProvider:Lmiuix/navigator/navigatorinfo/NavigatorInfoProvider;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lmiuix/navigator/app/MiuixNavigatorImpl;->ensureBottomNavigationExist()V

    :cond_9
    return-void
.end method

.method public setBottomTabStyle(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomTabStyle:I

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigation/NavigationBarView;->setLayoutStyle(I)V

    :cond_9
    return-void
.end method

.method public setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 4

    if-nez p1, :cond_a

    iget-object p1, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mDefaultNavTabSelectedListener:Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void

    :cond_a
    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    new-instance v1, Lmiuix/navigator/app/MiuixNavigatorImpl$1;

    invoke-direct {v1, p0, p1}, Lmiuix/navigator/app/MiuixNavigatorImpl$1;-><init>(Lmiuix/navigator/app/MiuixNavigatorImpl;Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V

    invoke-virtual {v0, v1}, Lmiuix/navigator/navigation/NavigationBarView;->setOnItemSelectedListener(Lmiuix/navigator/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void
.end method

.method public showBottomTab()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/app/MiuixNavigatorImpl;->mBottomNavigationView:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->show(Z)V

    :cond_10
    return-void
.end method
