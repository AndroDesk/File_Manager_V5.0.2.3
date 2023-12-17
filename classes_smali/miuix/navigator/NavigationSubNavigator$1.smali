.class Lmiuix/navigator/NavigationSubNavigator$1;
.super Ljava/lang/Object;
.source "NavigationSubNavigator.java"

# interfaces
.implements Lmiuix/navigator/NavigatorFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavigationSubNavigator;-><init>(Lmiuix/navigator/NavigatorImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavigationSubNavigator;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigationSubNavigator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigationSubNavigator$1;->this$0:Lmiuix/navigator/NavigationSubNavigator;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 5

    .line 1
    sget-object p1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 3
    if-eq p2, p1, :cond_8

    .line 5
    sget-object p1, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    .line 7
    if-ne p2, p1, :cond_2e

    .line 9
    :cond_8
    iget-object p1, p0, Lmiuix/navigator/NavigationSubNavigator$1;->this$0:Lmiuix/navigator/NavigationSubNavigator;

    .line 11
    invoke-virtual {p1, p0}, Lmiuix/navigator/SubNavigator;->removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    .line 14
    iget-object p1, p0, Lmiuix/navigator/NavigationSubNavigator$1;->this$0:Lmiuix/navigator/NavigationSubNavigator;

    .line 16
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 23
    move-result-object p1

    .line 24
    sget p2, Lmiuix/navigator/R$id;->navigation_decor:I

    .line 26
    const-class v0, Lmiuix/navigator/NavigationFragment;

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "miuix.navigation"

    .line 35
    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/b0;->g()V

    .line 41
    iget-object p2, p1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 47
    :cond_2e
    return-void
.end method
