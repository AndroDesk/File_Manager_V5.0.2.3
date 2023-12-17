.class public Lmiui/cloud/XiaomiAccountManager;
.super Ljava/lang/Object;
.source "XiaomiAccountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XiaomiAccountManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnsAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Lmiui/cloud/XiaomiAccountManager$1;

    .line 3
    invoke-direct {v0, p0, p1}, Lmiui/cloud/XiaomiAccountManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invoke()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    return-object p0
.end method

.method public static invalidateSnsAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    new-instance v0, Lmiui/cloud/XiaomiAccountManager$2;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lmiui/cloud/XiaomiAccountManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invoke()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    if-nez p0, :cond_f

    .line 14
    const/4 p0, 0x0

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result p0

    .line 20
    :goto_13
    return p0
.end method
