.class Lmiuix/navigator/NavigatorImpl$2;
.super Landroidx/activity/h;
.source "NavigatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/NavigatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavigatorImpl;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-direct {p0, p2}, Landroidx/activity/h;-><init>(Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->canCloseNavigation()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->closeNavigation()V

    .line 14
    goto :goto_1f

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    .line 17
    iget-object v0, v0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    .line 19
    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1f

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method
