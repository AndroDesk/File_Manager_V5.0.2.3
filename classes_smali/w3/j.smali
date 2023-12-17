.class public final Lw3/j;
.super La/b;
.source "RequestInjectorCompact_V18.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b;-><init>(I)V

    .line 5
    return-void
.end method


# virtual methods
.method public final X(Landroid/content/Context;I)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.action.DATA_IN_TRANSFER"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.cloudservice"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "retryTime"

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    return-void
.end method
