.class public Lmiuix/navigator/navigatorinfo/ActivityNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "ActivityNavInfo.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mOptions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p2}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 4

    iget-object p1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/ActivityNavInfo;->mOptions:Landroid/os/Bundle;

    return-void
.end method
