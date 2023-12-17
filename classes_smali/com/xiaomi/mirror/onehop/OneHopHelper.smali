.class public Lcom/xiaomi/mirror/onehop/OneHopHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;,
        Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;
    }
.end annotation


# static fields
.field public static final ABORT_BROADCAST:Z = true

.field public static final ACTION_ONEHOP_MIRROR:Ljava/lang/String; = "com.miui.onehop.action.MIRROR"

.field public static final EXTRA_ABILITY_LYRA:Ljava/lang/String; = "_ability_lyra"

.field public static final EXTRA_BT_MAC:Ljava/lang/String; = "_bt_mac"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "_device_type"

.field public static final FILESHARE_PRIORITY:I = 0x3e8

.field public static final LOG_TAG:Ljava/lang/String; = "OneHopHelper"

.field public static final METADATA_KEY_LYRA:Ljava/lang/String; = "com.xiaomi.continuity.VERSION_NAME"

.field public static final METADATA_KEY_MIRROR:Ljava/lang/String; = "com.xiaomi.mirror.nfc"

.field public static final METADATA_KEY_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity.nfc"

.field public static final NOT_ABORT_BROADCAST:Z = false

.field public static final ONE_HOP_VERSION_INVALID:I = -0x1

.field public static final ONE_HOP_VERSION_MIRROR:I = 0x0

.field public static final ONE_HOP_VERSION_MISHARE:I = 0x1

.field public static final PACKAGE_LYRA:Ljava/lang/String; = "com.xiaomi.mi_connect_service"

.field public static final PACKAGE_MIRROR:Ljava/lang/String; = "com.xiaomi.mirror"

.field public static final PACKAGE_MISHARE:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field public static final PERMISSION_ONEHOP_MIRROR:Ljava/lang/String; = "com.miui.onehop.permission.MIRROR"

.field public static volatile sManager:Lcom/xiaomi/mirror/onehop/OneHopHelper;


# instance fields
.field public mHasInitialize:Z

.field public mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

.field public mSelfIsSupportLyra:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mHasInitialize:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mirror/onehop/OneHopHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/mirror/onehop/OneHopHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->checkAbilitySupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private checkAbilitySupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    :cond_8
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private checkIsSupportLyra(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "com.xiaomi.mi_connect_service"

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x0

    const-string v2, "com.xiaomi.continuity.VERSION_NAME"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    return v0
.end method

.method public static getInstance()Lcom/xiaomi/mirror/onehop/OneHopHelper;
    .registers 1

    invoke-static {}, Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;->access$100()Lcom/xiaomi/mirror/onehop/OneHopHelper;

    move-result-object v0

    return-object v0
.end method

.method private getMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    move-exception p1

    const-string p2, "OneHopHelper"

    const-string v0, "name not found"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v1

    :goto_15
    if-eqz p1, :cond_1a

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p1

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "OneHopHelper"

    .line 11
    if-eq v0, v1, :cond_12

    .line 13
    const-string p1, "register oneHopShareReceiver must in mainThread"

    .line 15
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_12
    iget-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mHasInitialize:Z

    .line 21
    if-nez v0, :cond_1f

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->checkIsSupportLyra(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mHasInitialize:Z

    .line 32
    :cond_1f
    const-string v0, "self is support lyra: "

    .line 34
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    if-eqz v0, :cond_38

    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->unregisterOneHopShareReceiver(Landroid/content/Context;)V

    .line 57
    :cond_38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 59
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 62
    new-instance p2, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;

    .line 64
    invoke-direct {p2, p0, v0}, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;-><init>(Lcom/xiaomi/mirror/onehop/OneHopHelper;Ljava/lang/ref/WeakReference;)V

    .line 67
    iput-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance p2, Landroid/content/IntentFilter;

    .line 71
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const/16 v0, 0x3e8

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    const-string v0, "com.miui.onehop.action.MIRROR"

    .line 81
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 87
    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const/4 v1, 0x0

    .line 91
    const-string v2, "com.miui.onehop.permission.MIRROR"

    .line 93
    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public unregisterOneHopShareReceiver(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    const-string p1, "OneHopHelper"

    const-string v0, "unregister oneHopShareReceiver must in mainThread"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper;->mOneHopShareReceiver:Landroid/content/BroadcastReceiver;

    :cond_22
    return-void
.end method
