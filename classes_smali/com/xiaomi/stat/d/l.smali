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

.field private static final b:I = 0x10

.field private static final c:I = 0x11

.field private static final d:I = 0x12

.field private static final e:I = 0x13

.field private static final f:Ljava/lang/String; = "2G"

.field private static final g:Ljava/lang/String; = "3G"

.field private static final h:Ljava/lang/String; = "4G"

.field private static final i:Ljava/lang/String; = "WIFI"

.field private static final j:Ljava/lang/String; = "ETHERNET"

.field private static final k:Ljava/lang/String; = "UNKNOWN"

.field private static final l:Ljava/lang/String; = "NOT_CONNECTED"


# direct methods
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

    .line 1
    :cond_4
    invoke-static {p0}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
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

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const-string v1, "3G"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 p0, 0x2

    return p0

    :cond_2b
    const-string v1, "4G"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 p0, 0x4

    return p0

    :cond_35
    const-string v1, "WIFI"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/16 p0, 0x8

    return p0

    :cond_40
    const-string v1, "ETHERNET"

    .line 7
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

    .line 8
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    const-string v1, "connectivity"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    return v0

    :catch_19
    const-string v0, "isNetworkConnected exception"

    .line 12
    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "UNKNOWN"

    .line 3
    :try_start_2
    invoke-static {p0}, Lcom/xiaomi/stat/d/e;->w(Landroid/content/Context;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_d

    .line 9
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    const-string v1, "connectivity"

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 22
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_44

    .line 28
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_22

    .line 34
    goto :goto_44

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_2c

    .line 42
    const-string p0, "WIFI"

    .line 44
    return-object p0

    .line 45
    :cond_2c
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_4f

    .line 51
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 54
    move-result p0

    .line 55
    packed-switch p0, :pswitch_data_50

    .line 58
    goto :goto_43

    .line 59
    :pswitch_3a  #0xd, 0x12, 0x13
    const-string p0, "4G"

    .line 61
    return-object p0

    .line 62
    :pswitch_3d  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    const-string p0, "3G"

    .line 64
    return-object p0

    .line 65
    :pswitch_40  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    const-string p0, "2G"

    .line 67
    return-object p0

    .line 68
    :goto_43
    return-object v0

    .line 69
    :cond_44
    :goto_44
    const-string p0, "NOT_CONNECTED"
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_47

    .line 71
    return-object p0

    .line 72
    :catch_47
    move-exception p0

    .line 73
    const-string v1, "NetWorkStateUtil"

    .line 75
    const-string v2, "getNetworkState error"

    .line 77
    invoke-static {v1, v2, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_4f
    return-object v0

    .line 81
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
