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
.method public constructor <init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/Navigator;-><init>()V

    .line 4
    sget-object v0, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 6
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 25
    new-instance v0, Landroidx/collection/a;

    .line 27
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 30
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    .line 32
    new-instance v0, Landroidx/collection/a;

    .line 34
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 37
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    .line 39
    new-instance v0, Lmiuix/navigator/NavigatorImpl$2;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, v1}, Lmiuix/navigator/NavigatorImpl$2;-><init>(Lmiuix/navigator/NavigatorImpl;Z)V

    .line 45
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCallback:Landroidx/activity/h;

    .line 47
    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 49
    new-instance p2, Lmiuix/navigator/NavigationSubNavigator;

    .line 51
    invoke-direct {p2, p0}, Lmiuix/navigator/NavigationSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 54
    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 56
    new-instance p2, Lmiuix/navigator/ContentSubNavigator;

    .line 58
    invoke-direct {p2, p0}, Lmiuix/navigator/ContentSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 61
    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 63
    new-instance p2, Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 65
    invoke-direct {p2, p0}, Lmiuix/navigator/SecondaryContentSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 68
    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 70
    if-eqz p1, :cond_68

    .line 72
    const-string p2, "miuix:navigatorStrategy"

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_68

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    const/16 v1, 0x21

    .line 84
    if-lt v0, v1, :cond_60

    .line 86
    const-class v0, Lmiuix/navigator/NavigatorStrategy;

    .line 88
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lmiuix/navigator/NavigatorStrategy;

    .line 94
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 96
    goto :goto_68

    .line 97
    :cond_60
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lmiuix/navigator/NavigatorStrategy;

    .line 103
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 105
    :cond_68
    :goto_68
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 107
    if-nez p1, :cond_73

    .line 109
    new-instance p1, Lmiuix/navigator/NavigatorStrategy;

    .line 111
    invoke-direct {p1}, Lmiuix/navigator/NavigatorStrategy;-><init>()V

    .line 114
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 116
    :cond_73
    new-instance p1, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 118
    invoke-direct {p1, p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;-><init>(Lmiuix/navigator/NavigatorImpl;)V

    .line 121
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 123
    return-void
.end method

.method public static synthetic a(Lmiuix/navigator/SubNavigator;)V
    .registers 1

    invoke-static {p0}, Lmiuix/navigator/NavigatorImpl;->lambda$dispatchDestroyView$9(Lmiuix/navigator/SubNavigator;)V

    return-void
.end method

.method public static synthetic access$002(Lmiuix/navigator/NavigatorImpl;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 3
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

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_32

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2f

    instance-of v3, v2, Lmiuix/appcompat/app/IFragment;

    if-eqz v3, :cond_2f

    instance-of v3, v2, Lmiuix/responsive/interfaces/IResponsive;

    if-eqz v3, :cond_2f

    move-object v3, v2

    check-cast v3, Lmiuix/appcompat/app/IFragment;

    .line 9
    invoke-interface {v3}, Lmiuix/appcompat/app/IFragment;->isRegisterResponsive()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 10
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-interface {p1, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 8
    invoke-interface {p1, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 13
    invoke-interface {p1, v0}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 16
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

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchCreate$3(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchDestroy$10(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchDestroyView$9(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchPause$7(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchResume$6(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchStart$5(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$dispatchStop$8(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->setHostState(I)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$onCreate$0(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/SubNavigator;->onCreate(Landroid/os/Bundle;)V

    .line 5
    return-void
.end method

.method private static synthetic lambda$onCreate$1(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_c

    .line 5
    :cond_4
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getTag()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 12
    move-result-object p0

    .line 13
    :goto_c
    invoke-virtual {p1, p0}, Lmiuix/navigator/SubNavigator;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method private static synthetic lambda$onSaveInstanceState$2(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/navigator/SubNavigator;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getTag()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    return-void
.end method


# virtual methods
.method public addCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public addCategory(Lmiuix/navigator/Navigator$Category;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addCategory(Lmiuix/navigator/Navigator$Category;I)V

    return-void
.end method

.method public addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_d
    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public addLabel(Lmiuix/navigator/Navigator$Label;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addLabel(Lmiuix/navigator/Navigator$Label;I)V

    return-void
.end method

.method public addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_16

    .line 3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    .line 10
    invoke-interface {p1, v0}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationVisibilityChanged(I)V

    .line 13
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    .line 15
    invoke-interface {p1, v0}, Lmiuix/navigator/NavigatorFragmentListener;->onContentVisibilityChanged(I)V

    .line 18
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    .line 20
    invoke-interface {p1, v0}, Lmiuix/navigator/NavigatorFragmentListener;->onSecondaryContentVisibilityChanged(I)V

    .line 23
    :cond_16
    return-void
.end method

.method public addNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 6
    if-eqz v0, :cond_14

    .line 8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_14

    .line 16
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 18
    invoke-virtual {v0, p0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 8
    goto :goto_d

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_d
    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->addTab(Lmiuix/navigator/BottomTab;)V

    return-void
.end method

.method public addTab(Lmiuix/navigator/BottomTab;I)V
    .registers 4

    .line 2
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

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/NavigatorImpl;->mEditing:Z

    .line 3
    if-nez v0, :cond_16

    .line 5
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 7
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isOverlay()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_16

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public canPopSecondaryContent()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 21
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public closeContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->closeContent(Z)V

    return-void
.end method

.method public closeContent(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->closeContent(Z)V

    return-void
.end method

.method public closeNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->closeNavigation(Z)V

    return-void
.end method

.method public closeNavigation(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation(Z)V

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 8
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 11
    return-void
.end method

.method public dispatchCreate()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
    return-void
.end method

.method public dispatchDestroy()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
    return-void
.end method

.method public dispatchDestroyView()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchPause()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    .line 10
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 12
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    .line 19
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 21
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    .line 28
    return-void
.end method

.method public dispatchResponsiveLayout(ILandroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    .line 2
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 3
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/NavigatorImpl;->dispatchResponsiveLayout(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method

.method public dispatchResume()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
    return-void
.end method

.method public dispatchStart()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
    return-void
.end method

.method public dispatchStop()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/navigator/k;

    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lmiuix/navigator/k;-><init>(I)V

    .line 7
    invoke-direct {p0, v0}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 10
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_27

    .line 13
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 15
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 27
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_25

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p1, 0x1

    .line 41
    :goto_28
    return p1
.end method

.method public findCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findCategory(I)Lmiuix/navigator/Navigator$Category;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public findLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findLabel(I)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    return-object p1
.end method

.method public findLabel(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findLabel(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/Navigator$Label;

    move-result-object p1

    return-object p1
.end method

.method public findNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;
    .registers 4

    .line 1
    if-eqz p1, :cond_35

    .line 3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 5
    if-ne p1, v0, :cond_7

    .line 7
    goto :goto_35

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 14
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 17
    move-result-object v1

    .line 18
    if-ne v0, v1, :cond_16

    .line 20
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 22
    return-object p1

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 25
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_21

    .line 31
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 33
    return-object p1

    .line 34
    :cond_21
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 36
    invoke-virtual {v1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 39
    move-result-object v1

    .line 40
    if-ne v0, v1, :cond_2c

    .line 42
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 44
    return-object p1

    .line 45
    :cond_2c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->findNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_35
    :goto_35
    return-object p0
.end method

.method public findTab(I)Lmiuix/navigator/BottomTab;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findTab(I)Lmiuix/navigator/BottomTab;

    move-result-object p1

    return-object p1
.end method

.method public findTab(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/BottomTab;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->findTab(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)Lmiuix/navigator/BottomTab;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->getAdapter()Lmiuix/navigator/adapter/NavigationAdapter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBottomTabMenu()Landroid/view/Menu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;
    .registers 3

    .line 1
    const-string v0, "miuix.root"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object p0

    .line 10
    :cond_9
    const-string v0, "miuix.navigation"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_14

    .line 18
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSub:Lmiuix/navigator/NavigationSubNavigator;

    .line 20
    return-object p1

    .line 21
    :cond_14
    const-string v0, "miuix.content"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSub:Lmiuix/navigator/ContentSubNavigator;

    .line 31
    return-object p1

    .line 32
    :cond_1f
    const-string v0, "miuix.secondaryContent"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2a

    .line 40
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 42
    return-object p1

    .line 43
    :cond_2a
    return-object p0
.end method

.method public getContentVisibility()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    .line 3
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->getSelectedInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNavHostFragment()Lmiuix/navigator/NavHostFragment;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 3
    return-object v0
.end method

.method public getNavigationMenu()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationMenuResId:I

    .line 3
    return v0
.end method

.method public getNavigationMode()Lmiuix/navigator/Navigator$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    return-object v0
.end method

.method public final getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    return-object v0
.end method

.method public getNavigationVisibility()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    .line 3
    return v0
.end method

.method public getOnBackPressedCallback()Landroidx/activity/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCallback:Landroidx/activity/h;

    .line 3
    return-object v0
.end method

.method public getSecondaryContentVisibility()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    .line 3
    return v0
.end method

.method public getStrategy()Lmiuix/navigator/NavigatorStrategy;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "miuix.root"

    return-object v0
.end method

.method public hideBottomTab(Z)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "not implemented. Subclass must override this"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public immerseSecondaryContent(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/navigator/SecondaryContentSubNavigator;->requestFocus(Z)V

    .line 7
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 9
    if-eqz v0, :cond_12

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maskNavigation(Z)V

    .line 14
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maskContent(Z)V

    .line 19
    :cond_12
    return-void
.end method

.method public initExtraViews()V
    .registers 1

    return-void
.end method

.method public isContentOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isContentOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isContentUserFocused()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryContentMasked()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isFocused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNavigationOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isNavigationOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNavigationOverlay()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isOverlay()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSecondaryContentUserFocused()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSecondaryOnTop()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTop()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 12
    if-eqz v0, :cond_14

    .line 14
    const-string v1, "secondaryOnTop"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1, p0}, Lmiuix/navigator/NavigatorImpl;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V

    return-void
.end method

.method public navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;Lmiuix/navigator/Navigator;)V

    .line 3
    invoke-virtual {p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->shouldCloseOverlay()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->canCloseNavigation()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->closeNavigation()V

    :cond_18
    return-void
.end method

.method public newCategory(I)Lmiuix/navigator/Navigator$Category;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newCategory(I)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newCategory(II)Lmiuix/navigator/Navigator$Category;
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newCategory(II)Lmiuix/navigator/Navigator$Category;

    move-result-object p1

    return-object p1
.end method

.method public newLabel(I)Lmiuix/navigator/Navigator$Label;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newLabel(I)Lmiuix/navigator/Navigator$Label;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public newTab()Lmiuix/navigator/BottomTab;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->newTab()Lmiuix/navigator/BottomTab;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public notifyNavigationMenuSelected(Landroid/view/MenuItem;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationMenuSelected(Landroid/view/MenuItem;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onBottomNavigationDestroyed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationDestroyed()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onBottomNavigationPrepared()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationPrepared()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onBottomNavigationVisibilityChanged(ZI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 19
    invoke-interface {v1, p1, p2}, Lmiuix/navigator/NavigatorFragmentListener;->onBottomNavigationVisibilityChanged(ZI)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6
    return-void
.end method

.method public onContentCloseBegin()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseBegin()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentCloseCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseCancel()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentCloseFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentCloseFinish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentOpenBegin()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenBegin()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentOpenCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenCancel()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentOpenFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentOpenFinish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentRatioChanged(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onContentRatioChanged(F)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onContentVisibilityChanged(I)V
    .registers 4
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentVisibility:I

    .line 8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 26
    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onContentVisibilityChanged(I)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 33
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    if-nez p1, :cond_c

    .line 3
    new-instance p1, Lmiuix/navigator/k;

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-direct {p1, v0}, Lmiuix/navigator/k;-><init>(I)V

    .line 9
    invoke-direct {p0, p1}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 12
    return-void

    .line 13
    :cond_c
    const-string v0, "miuix:navigatorState"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lmiuix/navigator/l;

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, v0, v2}, Lmiuix/navigator/l;-><init>(Ljava/lang/Object;I)V

    .line 25
    invoke-direct {p0, v1}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 28
    const-string v0, "miuix:navigatorStrategy"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_54

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    const/16 v2, 0x21

    .line 40
    if-lt v1, v2, :cond_32

    .line 42
    const-class v1, Lmiuix/navigator/NavigatorStrategy;

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lmiuix/navigator/NavigatorStrategy;

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lmiuix/navigator/NavigatorStrategy;

    .line 57
    :goto_38
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->setStrategy(Lmiuix/navigator/NavigatorStrategy;)V

    .line 60
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorStrategy;->isIgnoreSaveInstance()Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_54

    .line 66
    const-string v0, "miuix:navigatorMode"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_54

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lmiuix/navigator/Navigator$Mode;->valueOf(Ljava/lang/String;)Lmiuix/navigator/Navigator$Mode;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    .line 85
    :cond_54
    const-string v0, "miuix:navigationLayoutState"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_62

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 99
    :cond_62
    const-string v0, "miuix:navigatorInfoState"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_73

    .line 107
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v1, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onRestoreState(Landroid/os/Bundle;)V

    .line 116
    :cond_73
    return-void
.end method

.method public onEditingChanged(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/navigator/NavigatorImpl;->mEditing:Z

    .line 3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setEditingMode(Z)V

    .line 8
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 11
    return-void
.end method

.method public onNavigationCloseBegin()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseBegin()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationCloseCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseCancel()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationCloseFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationCloseFinish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationOpenBegin()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenBegin()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationOpenCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenCancel()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationOpenFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationOpenFinish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationRatioChanged(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/navigator/Navigator$NavigatorStateListener;

    .line 19
    invoke-interface {v1, p1}, Lmiuix/navigator/Navigator$NavigatorStateListener;->onNavigationRatioChanged(F)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationVisibility:I

    .line 8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 26
    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigationVisibilityChanged(I)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 33
    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0, p2}, Lmiuix/navigator/MiuixNavigationLayout;->notifyModeChanged(Lmiuix/navigator/Navigator$Mode;)V

    .line 8
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 29
    invoke-interface {v1, p1, p2}, Lmiuix/navigator/NavigatorFragmentListener;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    new-instance v1, Lmiuix/navigator/l;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Lmiuix/navigator/l;-><init>(Ljava/lang/Object;I)V

    .line 12
    invoke-direct {p0, v1}, Lmiuix/navigator/NavigatorImpl;->forAllSubNavigator(Ll0/a;)V

    .line 15
    const-string v1, "miuix:navigatorState"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "miuix:navigatorMode"

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getStrategy()Lmiuix/navigator/NavigatorStrategy;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "miuix:navigatorStrategy"

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    new-instance v0, Landroid/os/Bundle;

    .line 44
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 49
    invoke-virtual {v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->onSaveState(Landroid/os/Bundle;)V

    .line 52
    const-string v1, "miuix:navigationLayoutState"

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    .line 59
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 64
    invoke-virtual {v1, v0}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onSaveState(Landroid/os/Bundle;)V

    .line 67
    const-string v1, "miuix:navigatorInfoState"

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onSecondaryContentVisibilityChanged(I)V
    .registers 4
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentVisibility:I

    .line 8
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmiuix/navigator/NavigatorFragmentListener;

    .line 26
    invoke-interface {v1, p1}, Lmiuix/navigator/NavigatorFragmentListener;->onSecondaryContentVisibilityChanged(I)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 33
    return-void
.end method

.method public openContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->openContent(Z)V

    return-void
.end method

.method public openContent(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->openContent(Z)V

    return-void
.end method

.method public openNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->openNavigation(Z)V

    return-void
.end method

.method public openNavigation(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation(Z)V

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public releaseView()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSwitch:Landroid/view/View;

    .line 4
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 16
    invoke-virtual {v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 19
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 21
    invoke-virtual {v1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    .line 24
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 26
    return-void
.end method

.method public removeCategory(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeCategory(I)V

    return-void
.end method

.method public removeCategory(Lmiuix/navigator/Navigator$Category;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeCategory(Lmiuix/navigator/Navigator$Category;)V

    return-void
.end method

.method public removeContentSwitch(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->removeContentSwitch(Landroid/view/View;)V

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_10
    return-void
.end method

.method public removeLabel(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeLabel(I)V

    return-void
.end method

.method public removeLabel(Lmiuix/navigator/Navigator$Label;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->removeLabel(Lmiuix/navigator/Navigator$Label;)V

    return-void
.end method

.method public removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorFragmentListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public removeNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 8
    if-eqz p1, :cond_17

    .line 10
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_17

    .line 18
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    .line 24
    :cond_17
    return-void
.end method

.method public removeSecondaryContentSwitch(Landroid/view/View;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->removeSecondaryContentSwitch(Landroid/view/View;)V

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_10
    return-void
.end method

.method public requestFocus(Z)V
    .registers 2

    return-void
.end method

.method public selectTab(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getBottomTabMenu()Landroid/view/Menu;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 13
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

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setContentExpandedMaxWidthWithDp(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setContentExpandedPaddingWithDp(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setContentExpandedPaddingWithDp(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setCrossBackground(I)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackgroundRes:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackground:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_c

    .line 4
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(I)V

    :cond_c
    return-void
.end method

.method public setCrossBackground(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackgroundRes:I

    .line 6
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackground:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    if-eqz v0, :cond_c

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public setInnerNavigationMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 3
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mMode:Lmiuix/navigator/Navigator$Mode;

    .line 5
    invoke-virtual {p0, v0, p1}, Lmiuix/navigator/NavigatorImpl;->onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V

    .line 8
    return-void
.end method

.method public setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorInfoManager:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V

    .line 6
    return-void
.end method

.method public setNavigationMenu(I)V
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationMenuResId:I

    .line 3
    if-eq v0, p1, :cond_1d

    .line 5
    iput p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationMenuResId:I

    .line 7
    const-string p1, "miuix.navigation"

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Lmiuix/appcompat/app/Fragment;

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    check-cast p1, Lmiuix/appcompat/app/Fragment;

    .line 27
    invoke-virtual {p1}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 30
    :cond_1d
    return-void
.end method

.method public setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_17

    .line 7
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 9
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 11
    invoke-virtual {v1}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 17
    invoke-virtual {v2}, Lmiuix/navigator/NavHostFragment;->getDeviceType()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2, p1}, Lmiuix/navigator/NavigatorStrategy;->updateStrategyOnNavigationModeChanged(Lmiuix/responsive/map/ResponsiveState;ILmiuix/navigator/Navigator$Mode;)V

    .line 24
    :cond_17
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->setInnerNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    .line 27
    return-void
.end method

.method public setNavigationSwitch(Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSwitch:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigationSwitch(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setNavigationView(Landroid/view/View;)V
    .registers 5

    .line 1
    check-cast p1, Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 5
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->initExtraViews()V

    .line 8
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 10
    if-eqz p1, :cond_13

    .line 12
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->onRestoreState(Landroid/os/Bundle;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 20
    :cond_13
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 22
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lmiuix/navigator/MiuixNavigationLayout;->initWithMode(Lmiuix/navigator/Navigator$Mode;)V

    .line 29
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 31
    invoke-virtual {p1, p0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 34
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationSwitch:Landroid/view/View;

    .line 36
    if-eqz p1, :cond_2a

    .line 38
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 40
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigationSwitch(Landroid/view/View;)V

    .line 43
    :cond_2a
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    .line 45
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p1

    .line 53
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_52

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/View;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 79
    invoke-virtual {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->addContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 82
    goto :goto_34

    .line 83
    :cond_52
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mContentSwitch:Ljava/util/Map;

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 88
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    .line 90
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object p1

    .line 98
    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7f

    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Landroid/view/View;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;

    .line 124
    invoke-virtual {v1, v2, v0}, Lmiuix/navigator/MiuixNavigationLayout;->addSecondaryContentSwitch(Landroid/view/View;Lmiuix/navigator/ViewAfterNavigatorSwitchPresenter;)V

    .line 127
    goto :goto_61

    .line 128
    :cond_7f
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSwitch:Ljava/util/Map;

    .line 130
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 133
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackground:Landroid/view/View;

    .line 135
    if-eqz p1, :cond_8e

    .line 137
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 139
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(Landroid/view/View;)V

    .line 142
    goto :goto_97

    .line 143
    :cond_8e
    iget p1, p0, Lmiuix/navigator/NavigatorImpl;->mCrossBackgroundRes:I

    .line 145
    if-eqz p1, :cond_97

    .line 147
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 149
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setCrossBackground(I)V

    .line 152
    :cond_97
    :goto_97
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStateListeners:Ljava/util/List;

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_a4

    .line 160
    iget-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 162
    invoke-virtual {p1, p0}, Lmiuix/navigator/MiuixNavigationLayout;->setNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V

    .line 165
    :cond_a4
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    .line 168
    return-void
.end method

.method public setSecondaryOnTop(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0, p1, p2}, Lmiuix/navigator/MiuixNavigationLayout;->setSecondaryOnTop(ZZ)V

    .line 8
    goto :goto_1a

    .line 9
    :cond_8
    iget-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 11
    if-nez p2, :cond_13

    .line 13
    new-instance p2, Landroid/os/Bundle;

    .line 15
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 18
    iput-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 20
    :cond_13
    iget-object p2, p0, Lmiuix/navigator/NavigatorImpl;->mSavedState:Landroid/os/Bundle;

    .line 22
    const-string v0, "secondaryOnTop"

    .line 24
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    :goto_1a
    return-void
.end method

.method public setSplitAnimationMaskBlurRadiusWithPx(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setSplitAnimationMaskBlurRadius(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setSplitAnimationStyle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setSplitAnimationStyle(I)V

    .line 8
    :cond_7
    return-void
.end method

.method public setStrategy(Lmiuix/navigator/NavigatorStrategy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateNavigationMode()V

    .line 6
    return-void
.end method

.method public setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
    .registers 2

    return-void
.end method

.method public showBottomTab()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "not implemented. Subclass must override this"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public startContentActionMode(Lmiuix/appcompat/app/Fragment;Landroid/view/ActionMode$Callback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 3
    if-nez v0, :cond_14

    .line 5
    if-eqz p2, :cond_14

    .line 7
    new-instance v0, Lmiuix/navigator/NavigatorImpl$1;

    .line 9
    invoke-direct {v0, p0, p2}, Lmiuix/navigator/NavigatorImpl$1;-><init>(Lmiuix/navigator/NavigatorImpl;Landroid/view/ActionMode$Callback;)V

    .line 12
    iput-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mContentActionModeWrapper:Landroid/view/ActionMode$Callback;

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/navigator/NavigatorImpl;->hideBottomTab(Z)V

    .line 21
    :cond_14
    return-void
.end method

.method public toggleContent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->toggleContent(Z)V

    return-void
.end method

.method public toggleContent(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->toggleContent(Z)V

    return-void
.end method

.method public toggleNavigation()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->toggleNavigation(Z)V

    return-void
.end method

.method public toggleNavigation(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->toggleNavigation(Z)V

    .line 3
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public updateNavigationMode()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigatorStrategy:Lmiuix/navigator/NavigatorStrategy;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 5
    invoke-virtual {v1}, Lmiuix/navigator/NavHostFragment;->getResponsiveState()Lmiuix/responsive/map/ResponsiveState;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/navigator/NavigatorImpl;->mNavHostFragment:Lmiuix/navigator/NavHostFragment;

    .line 11
    invoke-virtual {v2}, Lmiuix/navigator/NavHostFragment;->getDeviceType()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lmiuix/navigator/NavigatorStrategy;->getCurrentMode(Lmiuix/responsive/map/ResponsiveState;I)Lmiuix/navigator/Navigator$Mode;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 22
    move-result-object v1

    .line 23
    if-eq v1, v0, :cond_1b

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->setInnerNavigationMode(Lmiuix/navigator/Navigator$Mode;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public updateOnBackPressedCallbackEnabled()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mCallback:Landroidx/activity/h;

    .line 3
    iget-object v1, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 5
    if-eqz v1, :cond_14

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->canCloseNavigation()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_12

    .line 13
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->canPopSecondaryContent()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_14

    .line 19
    :cond_12
    const/4 v1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    :goto_15
    invoke-virtual {v0, v1}, Landroidx/activity/h;->setEnabled(Z)V

    .line 25
    return-void
.end method

.method public userFocusContent(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->maskSecondaryContent(Z)V

    .line 6
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl;->mNavigationView:Lmiuix/navigator/MiuixNavigationLayout;

    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->setOverlaySwitchEnabled(Z)V

    .line 13
    return-void
.end method

.method public userFocusSecondaryContent(Z)V
    .registers 2

    return-void
.end method
