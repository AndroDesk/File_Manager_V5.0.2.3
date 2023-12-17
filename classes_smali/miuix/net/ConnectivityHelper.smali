.class public Lmiuix/net/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/net/ConnectivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ConnectivityHelper"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mMacAddress:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/net/ConnectivityHelper$1;

    invoke-direct {v0}, Lmiuix/net/ConnectivityHelper$1;-><init>()V

    sput-object v0, Lmiuix/net/ConnectivityHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmiuix/net/ConnectivityHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/net/ConnectivityHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiuix/net/ConnectivityHelper;
    .registers 2

    sget-object v0, Lmiuix/net/ConnectivityHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/net/ConnectivityHelper;

    return-object p0
.end method


# virtual methods
.method public getManager()Landroid/net/ConnectivityManager;
    .registers 2

    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public isNetworkConnected()Z
    .registers 2

    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isUnmeteredNetworkConnected()Z
    .registers 2

    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public isWifiConnected()Z
    .registers 4

    iget-object v0, p0, Lmiuix/net/ConnectivityHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method
