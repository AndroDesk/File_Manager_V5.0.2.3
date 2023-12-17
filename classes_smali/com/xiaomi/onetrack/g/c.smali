.class public Lcom/xiaomi/onetrack/g/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "NetworkUtil"

.field private static final b:I = 0x10

.field private static final c:I = 0x11

.field private static final d:I = 0x12

.field private static final e:I = 0x13

.field private static final f:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    .registers 3

    :try_start_0
    const-string v0, "connectivity"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 7
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_46

    .line 9
    :cond_15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 10
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->WIFI:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 11
    :cond_1f
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3b

    .line 12
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_54

    .line 13
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    goto :goto_3a

    .line 14
    :pswitch_2f  #0x14
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_5G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 15
    :pswitch_32  #0xd, 0x12, 0x13
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_4G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 16
    :pswitch_35  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xe, 0xf, 0x11
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_3G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 17
    :pswitch_38  #0x1, 0x2, 0x4, 0x7, 0xb, 0x10
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->MOBILE_2G:Lcom/xiaomi/onetrack/OneTrack$NetType;

    :goto_3a
    return-object p0

    .line 18
    :cond_3b
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_51

    .line 19
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->ETHERNET:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    .line 20
    :cond_46
    :goto_46
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->NOT_CONNECTED:Lcom/xiaomi/onetrack/OneTrack$NetType;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    return-object p0

    :catch_49
    move-exception p0

    const-string v0, "NetworkUtil"

    const-string v1, "getNetworkState error"

    .line 21
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_51
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$NetType;->UNKNOWN:Lcom/xiaomi/onetrack/OneTrack$NetType;

    return-object p0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_38  #00000002
        :pswitch_35  #00000003
        :pswitch_38  #00000004
        :pswitch_35  #00000005
        :pswitch_35  #00000006
        :pswitch_38  #00000007
        :pswitch_35  #00000008
        :pswitch_35  #00000009
        :pswitch_35  #0000000a
        :pswitch_38  #0000000b
        :pswitch_35  #0000000c
        :pswitch_32  #0000000d
        :pswitch_35  #0000000e
        :pswitch_35  #0000000f
        :pswitch_38  #00000010
        :pswitch_35  #00000011
        :pswitch_32  #00000012
        :pswitch_32  #00000013
        :pswitch_2f  #00000014
    .end packed-switch
.end method

.method public static a()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_6
    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    return v0

    :catch_19
    const-string v0, "NetworkUtil"

    const-string v1, "isNetworkConnected exception"

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x0

    return v0
.end method
