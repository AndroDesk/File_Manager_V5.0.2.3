.class public Lmiuix/navigator/NavigatorImpl;
.super Lmiuix/navigator/Navigator;
.source "NavigatorImpl.java"

# interfaces
.implements Lmiuix/navigator/Navigator$NavigatorStateListener;


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG_MIUIX_NAVIGATION_LAYOUT_STATE:Ljava/lang/String; = "miuix:navigationLayoutState"

.field private static final TAG_MIUIX_NAVIGATOR_INFO_STATE:Ljava/lang/String; = "miuix:navigatorInfoState"


# instance fields
.field private final mCallback:Landroidx/activity/h;

.field private mContentActionModeWrapper:Landroid/view/ActionMode$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final mContentSub:Lmiuix/navigator/ContentSubNavigator;

.field private final mContentSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mContentVisibility:I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end field

.field private mCrossBackground:Landroid/view/View;

.field private mCrossBackgroundRes:I

.field private mEditing:Z

.field private mMode:Lmiuix/navigator/Navigator$Mode;

.field private final mNavHostFragment:Lmiuix/navigator/NavHostFragment;

.field private mNavigationMenuResId:I

.field public final mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

.field private mNavigationSwitch:Landroid/view/View;

.field private mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

.field private mNavigationVisibility:I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end field

.field private final mNavigatorFragmentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/NavigatorFragmentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

.field private final mNavigatorStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/navigator/Navigator$NavigatorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

.field private mSavedState:Landroid/os/Bundle;

.field public final mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

.field private final mSecondaryContentSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryContentVisibility:I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V
    .registers 5

    invoke-direct {p0}, Lmiuix/navigator/Navigator;-><init>()V

    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    new-instance v0, Lmiuix/navigator/NavigatorImpl$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/navigator/NavigatorImpl$2;-><init>(Lmiuix/navigator/NavigatorImpl;Z)V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCallback:Landroidx/activity/h;

    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    new-instance p2, Lmiuix/navigator/NavigationSubNavigator;

    invoke-direct {p2, p0}, Lmiuix/navigator/NavigationSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    new-instance p2, Lmiuix/navigator/ContentSubNavigator;

    invoke-direct {p2, p0}, Lmiuix/navigator/ContentSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    new-instance p2, Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-direct {p2, p0}, Lmiuix/navigator/SecondaryContentSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    if-eqz p1, :cond_68

    const-string p2, "miuix:navigatorStrategy"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_60

    const-class v0, Lmiuix/navigator/NavigatorStrategy;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/NavigatorStrategy;

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    goto :goto_68

    :cond_60
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/NavigatorStrategy;

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    :cond_68
    :goto_68
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    if-nez p1, :cond_73

    new-instance p1, Lmiuix/navigator/NavigatorStrategy;

    invoke-direct {p1}, Lmiuix/navigator/NavigatorStrategy;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    :cond_73
    new-instance p1, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-direct {p1, p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchDestroyView$9(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic access$002(Lmiuix/navigator/NavigatorImpl;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    return-object p1
.end method

.method public static synthetic b(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$onCreate$0(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V
    .registers 2

    invoke-static {p0, p1}, Lmiuix/navigator/NavigatorImpl;->lambda$onSaveInstanceState$2(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic d(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchActivityCreated$4(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method private dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_32

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2f

    instance-of v3, v2, Lmiuix/appcompat/app/IFragment;

    if-eqz v3, :cond_2f

    instance-of v3, v2, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v3, :cond_2f

    move-object v3, v2

    check-cast v3, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v3}, Lmiuix/appcompat/app/IFragment;->isRegisterResponsive()Z

    move-result v3

    if-nez v3, :cond_2f

    check-cast v2, Lmiuix/responsive/interfaces/IResponsive;

    invoke-interface {v2, p2, p3, p4}, Lmiuix/responsive/interfaces/IResponsive;->dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_32
    return-void
.end method

.method public static synthetic e(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchDestroy$10(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic f(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V
    .registers 2

    invoke-static {p0, p1}, Lmiuix/navigator/NavigatorImpl;->lambda$onCreate$1(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method private forAllSubNavigator(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Lmiuix/navigator/SubNavigator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-interface {p1, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-interface {p1, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-interface {p1, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchCreate$3(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic h(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchStart$5(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic i(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchPause$7(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic j(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchStop$8(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic k(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchResume$6(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method private static synthetic lambda$dispatchActivityCreated$4(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchCreate$3(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchDestroy$10(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchDestroyView$9(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchPause$7(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchResume$6(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchStart$5(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchStop$8(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onCreate$1(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    :goto_c
    invoke-virtual {p1, p0}, Lmiuix/navigator/SubNavigator;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$onSaveInstanceState$2(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lmiuix/navigator/SubNavigator;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public addCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public addCategory(Lmiuix/navigator/Navigator$Category;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addCategory(Lmiuix/navigator/Navigator$Category;I)V

    return-void
.end method

.method public addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addLabel(Lmiuix/navigator/Navigator$Label;I)V

    return-void
.end method

.method public addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 3

    if-eqz p1, :cond_16

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    invoke-interface {p1, v0}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationVisibilityChanged(I)V

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    invoke-interface {p1, v0}, Lmiuix/navigator/NavigatorFragmentListener;->onContentVisibilityChanged(I)V

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    invoke-interface {p1, v0}, Lmiuix/navigator/NavigatorFragmentListener;->onSecondaryContentVisibilityChanged(I)V

    :cond_16
    return-void
.end method

.method public addNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    :cond_14
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addTab(Lmiuix/navigator/BottomTab;)V

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;I)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addTab(Lmiuix/navigator/BottomTab;I)V

    return-void
.end method

.method public applyBottomNavigationBlur(Z)V
    .registers 2

    return-void
.end method

.method public canCloseNavigation()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/NavigatorImpl;->mEditing:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public canPopSecondaryContent()Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    return v1

    :cond_e
    if-nez v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    move-result v0

    return v0
.end method

.method public closeContent()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->closeContent(Z)V

    return-void
.end method

.method public closeContent(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->closeContent(Z)V

    return-void
.end method

.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchCreate()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchDestroy()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchDestroyView()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchPause()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public dispatchResponsiveLayout(ILandroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public dispatchResume()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchStart()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchStop()V
    .registers 3

    new-instance v0, Lmiuix/navigator/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public findCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public findLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findLabel(I)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    return-object p1
.end method

.method public findLabel(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findLabel(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    return-object p1
.end method

.method public findNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;
    .registers 4

    if-eqz p1, :cond_35

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    if-ne p1, v0, :cond_7

    goto :goto_35

    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-ne v0, v1, :cond_16

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    return-object p1

    :cond_16
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-ne v0, v1, :cond_21

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    return-object p1

    :cond_21
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    return-object p1

    :cond_2c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->findNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p1

    return-object p1

    :cond_35
    :goto_35
    return-object p0
.end method

.method public findTab(I)Lmiuix/navigator/BottomTab;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findTab(I)Lmiuix/navigator/BottomTab;

    move-result-object p1

    return-object p1
.end method

.method public findTab(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/BottomTab;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findTab(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/BottomTab;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getBottomTabMenu()Landroid/view/Menu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;
    .registers 3

    const-string v0, "miuix.root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const-string v0, "miuix.navigation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    return-object p1

    :cond_14
    const-string v0, "miuix.content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    return-object p1

    :cond_1f
    const-string v0, "miuix.secondaryContent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    return-object p1

    :cond_2a
    return-object p0
.end method

.method public getContentVisibility()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->getSelectedInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getNavHostFragment()Lmiuix/navigator/NavHostFragment;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    return-object v0
.end method

.method public getNavigationMenu()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationMenuResId:I

    return v0
.end method

.method public getNavigationMode()Lmiuix/navigator/Navigator$Mode;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    return-object v0
.end method

.method public final getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    return-object v0
.end method

.method public getNavigationVisibility()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    return v0
.end method

.method public getOnBackPressedCallback()Landroidx/activity/h;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCallback:Landroidx/activity/h;

    return-object v0
.end method

.method public getSecondaryContentVisibility()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    return v0
.end method

.method public getStrategy()Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.root"

    return-object v0
.end method

.method public hideBottomTab(Z)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented. Subclass must override this"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public immerseSecondaryContent(Z)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/navigator/SecondaryContentSubNavigator;->requestFocus(Z)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maskNavigation(Z)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maskContent(Z)V

    :cond_12
    return-void
.end method

.method public initExtraViews()V
    .registers 1

    return-void
.end method

.method public isContentOpen()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isContentOpen()Z

    move-result v0

    return v0
.end method

.method public isContentUserFocused()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryContentMasked()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNavigationOpen()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    move-result v0

    return v0
.end method

.method public isNavigationOverlay()Z
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isOverlay()Z

    move-result v0

    return v0
.end method

.method public isSecondaryContentUserFocused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSecondaryOnTop()Z
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTop()Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    const-string v1, "secondaryOnTop"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    invoke-virtual {p0, p1, p0}, Lmiuix/navigator/NavigatorImpl;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V

    return-void
.end method

.method public navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V

    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->shouldCloseOverlay()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->canCloseNavigation()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->closeNavigation()V

    :cond_18
    return-void
.end method

.method public newCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newCategory(II)Lmiuix/navigator/Navigator$Category;
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newCategory(II)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newLabel(I)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    return-object p1
.end method

.method public newTab()Lmiuix/navigator/BottomTab;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newTab()Lmiuix/navigator/BottomTab;

    move-result-object v0

    return-object v0
.end method

.method public notifyNavigationMenuSelected(Landroid/view/MenuItem;)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationMenuSelected(Landroid/view/MenuItem;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onBottomNavigationDestroyed()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationDestroyed()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onBottomNavigationPrepared()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationPrepared()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onBottomNavigationVisibilityChanged(ZI)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1, p1, p2}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentCloseBegin()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseBegin()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentCloseCancel()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseCancel()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentCloseFinish()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseFinish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentOpenBegin()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenBegin()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentOpenCancel()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenCancel()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentOpenFinish()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenFinish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentRatioChanged(F)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1, p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentRatioChanged(F)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onContentVisibilityChanged(I)V
    .registers 4
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onContentVisibilityChanged(I)V

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_c

    new-instance p1, Lmiuix/navigator/k;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lmiuix/navigator/k;-><init>(I)V

    invoke-direct {p0, p1}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    return-void

    :cond_c
    const-string v0, "miuix:navigatorState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lmiuix/navigator/l;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lmiuix/navigator/l;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v1}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    const-string v0, "miuix:navigatorStrategy"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_32

    const-class v1, Lmiuix/navigator/NavigatorStrategy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigatorStrategy;

    goto :goto_38

    :cond_32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/NavigatorStrategy;

    :goto_38
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->setStrategy(Lmiuix/navigator/NavigatorStrategy;)V

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorStrategy;->isIgnoreSaveInstance()Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "miuix:navigatorMode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/navigator/Navigator$Mode;->valueOf(Ljava/lang/String;)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    :cond_54
    const-string v0, "miuix:navigationLayoutState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    :cond_62
    const-string v0, "miuix:navigatorInfoState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onRestoreState(Landroid/os/Bundle;)V

    :cond_73
    return-void
.end method

.method public onEditingChanged(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiuix/navigator/NavigatorImpl;->mEditing:Z

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setEditingMode(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public onNavigationCloseBegin()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseBegin()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationCloseCancel()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseCancel()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationCloseFinish()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseFinish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationOpenBegin()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenBegin()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationOpenCancel()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenCancel()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationOpenFinish()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenFinish()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationRatioChanged(F)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    invoke-interface {v1, p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationRatioChanged(F)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationVisibilityChanged(I)V

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyModeChanged(Lmiuix/navigator/Navigator$Mode;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    :cond_a
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1, p1, p2}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lmiuix/navigator/l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lmiuix/navigator/l;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v1}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    const-string v1, "miuix:navigatorState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix:navigatorMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getStrategy()Lmiuix/navigator/NavigatorStrategy;

    move-result-object v0

    const-string v1, "miuix:navigatorStrategy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->onSaveState(Landroid/os/Bundle;)V

    const-string v1, "miuix:navigationLayoutState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onSaveState(Landroid/os/Bundle;)V

    const-string v1, "miuix:navigatorInfoState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSecondaryContentVisibilityChanged(I)V
    .registers 4
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onSecondaryContentVisibilityChanged(I)V

    goto :goto_d

    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public openContent()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->openContent(Z)V

    return-void
.end method

.method public openContent(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->openContent(Z)V

    return-void
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public releaseView()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSwitch:Landroid/view/View;

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    return-void
.end method

.method public removeCategory(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeCategory(I)V

    return-void
.end method

.method public removeCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public removeContentSwitch(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->removeContentSwitch(Landroid/view/View;)V

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-void
.end method

.method public removeLabel(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeLabel(I)V

    return-void
.end method

.method public removeLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    :cond_17
    return-void
.end method

.method public removeSecondaryContentSwitch(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->removeSecondaryContentSwitch(Landroid/view/View;)V

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-void
.end method

.method public requestFocus(Z)V
    .registers 2

    return-void
.end method

.method public selectTab(I)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public setBottomNavigationBackgroundVisible(Z)V
    .registers 2

    return-void
.end method

.method public setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V
    .registers 3

    return-void
.end method

.method public setBottomTabStyle(I)V
    .registers 2

    return-void
.end method

.method public setContentExpandedMaxWidthWithDp(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setContentExpandedMaxWidthWithDp(I)V

    :cond_7
    return-void
.end method

.method public setContentExpandedPaddingWithDp(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setContentExpandedPaddingWithDp(I)V

    :cond_7
    return-void
.end method

.method public setCrossBackground(I)V
    .registers 3

    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackgroundRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackground:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(I)V

    :cond_c
    return-void
.end method

.method public setCrossBackground(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackgroundRes:I

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackground:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public setInnerNavigationMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    invoke-virtual {p0, v0, p1}, Lmiuix/navigator/NavigatorImpl;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    return-void
.end method

.method public setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V

    return-void
.end method

.method public setNavigationMenu(I)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationMenuResId:I

    if-eq v0, p1, :cond_1d

    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationMenuResId:I

    const-string p1, "miuix.navigation"

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    if-eqz v0, :cond_1d

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    :cond_1d
    return-void
.end method

.method public setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    if-eq v0, p1, :cond_17

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v1}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v1

    iget-object v2, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v2}, Lmiuix/navigator/NavHostFragment;->getDeviceType()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lmiuix/navigator/NavigatorStrategy;->updateStrategyOnNavigationModeChanged(Lmiuix/responsive/map/ResponsiveState;ILmiuix/navigator/Navigator$Mode;)V

    :cond_17
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->setInnerNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    return-void
.end method

.method public setNavigationSwitch(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSwitch:Landroid/view/View;

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigationSwitch(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public setNavigationView(Landroid/view/View;)V
    .registers 5

    check-cast p1, Lmiuix/navigator/MiuixNavigationLayout;

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->initExtraViews()V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    if-eqz p1, :cond_13

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onRestoreState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    :cond_13
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->initWithMode(Lmiuix/navigator/Navigator$Mode;)V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {p1, p0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSwitch:Landroid/view/View;

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigationSwitch(Landroid/view/View;)V

    :cond_2a
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    goto :goto_34

    :cond_52
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    invoke-virtual {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    goto :goto_61

    :cond_7f
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackground:Landroid/view/View;

    if-eqz p1, :cond_8e

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(Landroid/view/View;)V

    goto :goto_97

    :cond_8e
    iget p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackgroundRes:I

    if-eqz p1, :cond_97

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(I)V

    :cond_97
    :goto_97
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a4

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {p1, p0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    :cond_a4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public setSecondaryOnTop(ZZ)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryOnTop(ZZ)V

    goto :goto_1a

    :cond_8
    iget-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    if-nez p2, :cond_13

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    :cond_13
    iget-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    const-string v0, "secondaryOnTop"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1a
    return-void
.end method

.method public setSplitAnimationMaskBlurRadiusWithPx(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setSplitAnimationMaskBlurRadius(I)V

    :cond_7
    return-void
.end method

.method public setSplitAnimationStyle(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setSplitAnimationStyle(I)V

    :cond_7
    return-void
.end method

.method public setStrategy(Lmiuix/navigator/NavigatorStrategy;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    return-void
.end method

.method public setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 2

    return-void
.end method

.method public showBottomTab()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented. Subclass must override this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startContentActionMode(Lmiuix/appcompat/app/Fragment;Landroid/view/ActionMode$Callback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    new-instance v0, Lmiuix/navigator/NavigatorImpl$1;

    invoke-direct {v0, p0, p2}, Lmiuix/navigator/NavigatorImpl$1;-><init>(Lmiuix/navigator/NavigatorImpl;Landroid/view/ActionMode$Callback;)V

    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->hideBottomTab(Z)V

    :cond_14
    return-void
.end method

.method public toggleContent()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->toggleContent(Z)V

    return-void
.end method

.method public toggleContent(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->toggleContent(Z)V

    return-void
.end method

.method public toggleNavigation()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->toggleNavigation(Z)V

    return-void
.end method

.method public toggleNavigation(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->toggleNavigation(Z)V

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public updateNavigationMode()V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v1}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v1

    iget-object v2, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    invoke-virtual {v2}, Lmiuix/navigator/NavHostFragment;->getDeviceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiuix/navigator/NavigatorStrategy;->getCurrentMode(Lmiuix/responsive/map/ResponsiveState;I)Lmiuix/navigator/Navigator$Mode;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v1

    if-eq v1, v0, :cond_1b

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->setInnerNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    :cond_1b
    return-void
.end method

.method public updateOnBackPressedCallbackEnabled()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCallback:Landroidx/activity/h;

    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->canCloseNavigation()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->canPopSecondaryContent()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Landroidx/activity/h;->setEnabled(Z)V

    return-void
.end method

.method public userFocusContent(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maskSecondaryContent(Z)V

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setOverlaySwitchEnabled(Z)V

    return-void
.end method

.method public userFocusSecondaryContent(Z)V
    .registers 2

    return-void
.end method
