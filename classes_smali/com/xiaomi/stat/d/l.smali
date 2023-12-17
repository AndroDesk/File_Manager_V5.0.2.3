.class public Lcom/xiaomi/stat/d/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NetWorkStateUtil"

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/lang/String; = "2G"

.field private static final g:Ljava/lang/String; = "3G"

.field private static final h:Ljava/lang/String; = "4G"

.field private static final i:Ljava/lang/String; = "WIFI"

.field private static final j:Ljava/lang/String; = "ETHERNET"

.field private static final k:Ljava/lang/String; = "UNKNOWN"

.field private static final l:Ljava/lang/String; = "NOT_CONNECTED"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/d/l;->b:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/d/l;->c:I

    const v0, 0x92d84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/d/l;->d:I

    const v0, 0x92d85

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/d/l;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "NOT_CONNECTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4b

    :cond_17
    const-string v1, "2G"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const-string v1, "3G"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 p0, 0x2

    return p0

    :cond_2b
    const-string v1, "4G"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 p0, 0x4

    return p0

    :cond_35
    const-string v1, "WIFI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 p0, 0x8

    return p0

    :cond_40
    const-string v1, "ETHERNET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const/16 p0, 0x10

    return p0

    :cond_4b
    :goto_4b
    return v0
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    return v0

    :catch_19
    const-string v0, "isNetworkConnected exception"

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "UNKNOWN"

    :try_start_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->w(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_44

    :cond_22
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    const-string p0, "WIFI"

    return-object p0

    :cond_2c
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_50

    goto :goto_43

    :pswitch_3a  #0xd, 0x12, 0x13
    const-string p0, "4G"

    return-object p0

    :pswitch_3d  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    const-string p0, "3G"

    return-object p0

    :pswitch_40  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    const-string p0, "2G"

    return-object p0

    :goto_43
    return-object v0

    :cond_44
    :goto_44
    const-string p0, "NOT_CONNECTED"
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception p0

    const-string v1, "NetWorkStateUtil"

    const-string v2, "getNetworkState error"

    invoke-static {v1, v2, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4f
    return-object v0

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_40  #00000002
        :pswitch_3d  #00000003
        :pswitch_40  #00000004
        :pswitch_3d  #00000005
        :pswitch_3d  #00000006
        :pswitch_40  #00000007
        :pswitch_3d  #00000008
        :pswitch_3d  #00000009
        :pswitch_3d  #0000000a
        :pswitch_40  #0000000b
        :pswitch_3d  #0000000c
        :pswitch_3a  #0000000d
        :pswitch_3d  #0000000e
        :pswitch_3d  #0000000f
        :pswitch_40  #00000010
        :pswitch_3d  #00000011
        :pswitch_3a  #00000012
        :pswitch_3a  #00000013
    .end packed-switch
.end method
