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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/SecondaryContentSubNavigator;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/SecondaryContentSubNavigator$1;->this$0:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$l;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lmiuix/navigator/SecondaryContentSubNavigator$1;->this$0:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {p1}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p1

    iget-object p2, p0, Lmiuix/navigator/SecondaryContentSubNavigator$1;->this$0:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {p2}, Lmiuix/navigator/SubNavigator;->getBaseNavigator()Lmiuix/navigator/NavigatorImpl;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/navigator/NavigatorImpl;->isSecondaryOnTop()Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lmiuix/navigator/NavigatorImpl;->setSecondaryOnTop(ZZ)V

    :cond_1e
    return-void
.end method
