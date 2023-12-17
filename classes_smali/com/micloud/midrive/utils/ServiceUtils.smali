.class public Lcom/micloud/midrive/utils/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "ServiceUtils class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static send(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/micloud/midrive/utils/ServiceUtils;->send(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_a

    .line 3
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_13
    invoke-static {p0, v0}, Lmiui/cloud/app/ServiceAdapter;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
