.class public Lmiui/cloud/XiaomiAccountManager;
.super Ljava/lang/Object;
.source "XiaomiAccountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XiaomiAccountManager"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnsAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lmiui/cloud/XiaomiAccountManager$1;

    invoke-direct {v0, p0, p1}, Lmiui/cloud/XiaomiAccountManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static invalidateSnsAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lmiui/cloud/XiaomiAccountManager$2;

    invoke-direct {v0, p0, p1, p2}, Lmiui/cloud/XiaomiAccountManager$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_13
    return p0
.end method
