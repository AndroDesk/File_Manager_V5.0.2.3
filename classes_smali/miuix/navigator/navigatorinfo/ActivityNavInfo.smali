.class public Lmiuix/navigator/navigatorinfo/ActivityNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "ActivityNavInfo.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    .line 4
    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mIntent:Landroid/content/Intent;

    .line 8
    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mContext:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mIntent:Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mOptions:Landroid/os/Bundle;

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mOptions:Landroid/os/Bundle;

    .line 3
    return-void
.end method
