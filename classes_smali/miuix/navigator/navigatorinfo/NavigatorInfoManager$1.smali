.class Lmiuix/navigator/navigatorinfo/NavigatorInfoManager$1;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "NavigatorInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;->onRestoreState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/NavigatorInfoManager$1;->this$0:Lmiuix/navigator/navigatorinfo/NavigatorInfoManager;

    invoke-direct {p0, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
