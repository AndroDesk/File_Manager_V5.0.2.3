.class public final La4/b;
.super La/b;
.source "XiaomiAccountServiceProxyCompat_V20.java"


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
.method public final E(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final I(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
