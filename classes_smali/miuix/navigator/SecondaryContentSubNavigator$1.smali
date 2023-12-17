.class Lmiuix/navigator/SecondaryContentSubNavigator$1;
.super Landroidx/fragment/app/FragmentManager$l;
.source "SecondaryContentSubNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/SecondaryContentSubNavigator;->onControllerAttach(Lmiuix/navigator/NavigatorFragmentController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/SecondaryContentSubNavigator;


# direct methods
.method public constructor <init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/SecondaryContentSubNavigator$1;->this$0:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$l;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1e

    .line 11
    iget-object p1, p0, Lmiuix/navigator/SecondaryContentSubNavigator$1;->this$0:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 13
    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lmiuix/navigator/SecondaryContentSubNavigator$1;->this$0:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 19
    invoke-virtual {p2}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lmiuix/navigator/NavigatorImpl;->isSecondaryOnTop()Z

    .line 26
    move-result p2

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, p2, v0}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    .line 31
    :cond_1e
    return-void
.end method
