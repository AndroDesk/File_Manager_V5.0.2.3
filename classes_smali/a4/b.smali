.class public final La4/b;
.super La/b;
.source "XiaomiAccountServiceProxyCompat_V20.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final E(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final I(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/IXiaomiAccountServiceProxy;->invalidateSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
