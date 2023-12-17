.class Lmiuix/navigator/SubNavigator$1;
.super Lmiuix/appcompat/app/DelegateFragmentFactory;
.source "SubNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/SubNavigator;->onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/SubNavigator;


# direct methods
.method public constructor <init>(Lmiuix/navigator/SubNavigator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/SubNavigator$1;->this$0:Lmiuix/navigator/SubNavigator;

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/DelegateFragmentFactory;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/SubNavigator$1;->this$0:Lmiuix/navigator/SubNavigator;

    .line 3
    instance-of v1, v0, Lmiuix/navigator/ContentSubNavigator;

    .line 5
    if-eqz v1, :cond_c

    .line 7
    new-instance v1, Lmiuix/navigator/NavContentFragmentDelegate;

    .line 9
    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavContentFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 12
    return-object v1

    .line 13
    :cond_c
    instance-of v1, v0, Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 15
    if-eqz v1, :cond_16

    .line 17
    new-instance v1, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;

    .line 19
    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavSecondaryContentFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 22
    return-object v1

    .line 23
    :cond_16
    instance-of v1, v0, Lmiuix/navigator/NavigationSubNavigator;

    .line 25
    if-eqz v1, :cond_20

    .line 27
    new-instance v1, Lmiuix/navigator/NavigationFragmentDelegate;

    .line 29
    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavigationFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 32
    return-object v1

    .line 33
    :cond_20
    new-instance v1, Lmiuix/navigator/NavigatorFragmentDelegate;

    .line 35
    invoke-direct {v1, v0, p1}, Lmiuix/navigator/NavigatorFragmentDelegate;-><init>(Lmiuix/navigator/SubNavigator;Landroidx/fragment/app/Fragment;)V

    .line 38
    return-object v1
.end method
