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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigationSubNavigator;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigationSubNavigator$1;->this$0:Lmiuix/navigator/NavigationSubNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 5

    sget-object p1, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-eq p2, p1, :cond_8

    sget-object p1, Lmiuix/navigator/Navigator$Mode;->NC:Lmiuix/navigator/Navigator$Mode;

    if-ne p2, p1, :cond_2e

    :cond_8
    iget-object p1, p0, Lmiuix/navigator/NavigationSubNavigator$1;->this$0:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {p1, p0}, Lmiuix/navigator/SubNavigator;->removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V

    iget-object p1, p0, Lmiuix/navigator/NavigationSubNavigator$1;->this$0:Lmiuix/navigator/NavigationSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    sget p2, Lmiuix/navigator/R$id;->navigation_decor:I

    const-class v0, Lmiuix/navigator/NavigationFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "miuix.navigation"

    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/b0;->g()V

    iget-object p2, p1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V

    :cond_2e
    return-void
.end method
