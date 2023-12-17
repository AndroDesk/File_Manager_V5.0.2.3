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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigatorImpl;Z)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    invoke-direct {p0, p2}, Landroidx/activity/h;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 3

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->canCloseNavigation()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {v0}, Lmiuix/navigator/NavigatorImpl;->closeNavigation()V

    goto :goto_1f

    :cond_e
    iget-object v0, p0, Lmiuix/navigator/NavigatorImpl$2;->this$0:Lmiuix/navigator/NavigatorImpl;

    iget-object v0, v0, Lmiuix/navigator/NavigatorImpl;->mSecondaryContentSub:Lmiuix/navigator/SecondaryContentSubNavigator;

    invoke-virtual {v0}, Lmiuix/navigator/SubNavigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->Q()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->U()Z

    :cond_1f
    :goto_1f
    return-void
.end method
