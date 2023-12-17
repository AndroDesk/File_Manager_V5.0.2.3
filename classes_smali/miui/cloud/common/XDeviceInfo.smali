.class public Lmiui/cloud/common/XDeviceInfo;
.super Ljava/lang/Object;
.source "XDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;,
        Lmiui/cloud/common/XDeviceInfo$KeyStoreType;,
        Lmiui/cloud/common/XDeviceInfo$PhoneType;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_ID_CACHE_TIME_MILLIS:J = 0x2bf20L

.field private static final QUERTY_TIME_OUT:I = 0xea60

.field private static sInstance:Lmiui/cloud/common/XDeviceInfo; = null

.field private static sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType; = null

.field private static sLastEmptyDeviceIdTime:J = -0x1L


# instance fields
.field public final IMEI:Ljava/lang/String;

.field public final MAC:Ljava/lang/String;

.field public final SN:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

.field public final model:Ljava/lang/String;

.field public final type:Lmiui/cloud/common/XDeviceInfo$PhoneType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "leo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "begoniain"

    const-string v2, "hennessy"

    const-string v3, "olivelite"

    const-string v4, "olivewood"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "libra"

    const-string v2, "aqua"

    const-string v3, "gemini"

    const-string v4, "gold"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vela"

    const-string v2, "kenzo"

    const-string v3, "grus"

    const-string v4, "tucana"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ido"

    const-string v2, "hydrogen"

    const-string v3, "helium"

    const-string v4, "kate"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "land"

    const-string v2, "lavender"

    const-string v3, "markw"

    const-string v4, "nikel"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omega"

    const-string v2, "cepheus"

    const-string v3, "capricorn"

    const-string v4, "laurus"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prada"

    const-string v2, "lithium"

    const-string v3, "scorpio"

    const-string v4, "natrium"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rolex"

    const-string v2, "mido"

    const-string v3, "santoni"

    const-string v4, "ginkgo"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sagit"

    const-string v2, "centaur"

    const-string v3, "oxygen"

    const-string v4, "tiffany"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ulysse"

    const-string v2, "ugglite"

    const-string v3, "chiron"

    const-string v4, "ugg"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "jason"

    const-string v2, "riva"

    const-string v3, "crux"

    const-string v4, "vince"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rosy"

    const-string v2, "meri"

    const-string v3, "davinci"

    const-string v4, "pine"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "whyred"

    const-string v2, "dipper"

    const-string v3, "onc"

    const-string v4, "polaris"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pyxis"

    const-string v2, "ysl"

    const-string v3, "wayne"

    const-string v4, "nitrogen"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sirius"

    const-string v2, "sakura"

    const-string v3, "sakura_india"

    const-string v4, "beryllium"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "violet"

    const-string v2, "raphael"

    const-string v3, "cactus"

    const-string v4, "cereus"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lotus"

    const-string v2, "willow"

    const-string v3, "clover"

    const-string v4, "ursa"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "olive"

    const-string v2, "tulip"

    const-string v3, "draco"

    const-string v4, "platina"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    goto :goto_ff

    :cond_fd
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->NONE:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    :goto_ff
    sput-object v0, Lmiui/cloud/common/XDeviceInfo;->sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-static {p1, p3}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    move-object p3, p1

    goto :goto_17

    :cond_13
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_17
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    sget-object p3, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, p3, :cond_1e

    goto :goto_20

    :cond_1e
    const-string p1, ""

    :goto_20
    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    goto :goto_c

    :cond_a
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    :goto_c
    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-static {p1, p2}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, p2

    goto :goto_1e

    :cond_1a
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    iput-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    sget-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, v1, :cond_25

    goto :goto_27

    :cond_25
    const-string p2, ""

    :goto_27
    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    sget-object p2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/cloud/common/XDeviceInfo;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    invoke-static {}, Lmiui/cloud/common/XDeviceInfo;->getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method public static asyncGet(Landroid/content/Context;Lmiui/cloud/common/XCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$1;

    invoke-direct {v1, p1, p0}, Lmiui/cloud/common/XDeviceInfo$1;-><init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static asyncGet(Landroid/content/Context;ZLmiui/cloud/common/XCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/common/XDeviceInfo$DeviceInfoReayListener;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$2;

    invoke-direct {v1, p2, p0, p1}, Lmiui/cloud/common/XDeviceInfo$2;-><init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized blockingGetNakedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 11

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1c

    sub-long v3, v1, v3

    const-wide/32 v7, 0x2bf20

    cmp-long v3, v3, v7

    if-gez v3, :cond_1c

    const-string p0, ""
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_40

    monitor-exit v0

    return-object p0

    :cond_1c
    const/4 v3, 0x0

    const-wide/32 v7, 0xea60

    :try_start_20
    invoke-static {p0, v7, v8, p1}, Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_20 .. :try_end_24} :catch_25
    .catchall {:try_start_20 .. :try_end_24} :catchall_40

    goto :goto_30

    :catch_25
    const/4 p0, 0x1

    :try_start_26
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v4, "Failed to get the device id."

    aput-object v4, p0, p1

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3c

    sput-wide v1, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J

    const-string p0, ""
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_40

    monitor-exit v0

    return-object p0

    :cond_3c
    :try_start_3c
    sput-wide v5, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_40

    monitor-exit v0

    return-object v3

    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object v0

    :cond_9
    sget-object v0, Lmiui/cloud/common/XDeviceInfo;->sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-object v0
.end method

.method private getMAC(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_f

    :cond_22
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wlan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_2c
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_2c} :catch_8a

    const/4 v6, -0x1

    if-ne v5, v6, :cond_30

    goto :goto_f

    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3
    :try_end_34
    .catch Ljava/net/SocketException; {:try_start_30 .. :try_end_34} :catch_69

    if-nez v3, :cond_37

    goto :goto_f

    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v0

    :goto_3d
    array-length v5, v3

    if-ge v4, v5, :cond_56

    const-string v5, "%02X:"

    new-array v6, v1, [Ljava/lang/Object;

    aget-byte v7, v3, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_64

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_69
    move-exception v3

    new-array v5, p1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get MAC for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", continue. "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    aput-object v3, v5, v1

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/net/SocketException; {:try_start_37 .. :try_end_89} :catch_8a

    goto :goto_f

    :catch_8a
    move-exception v2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "Failed to get MAC. "

    aput-object v3, p1, v0

    aput-object v2, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :cond_96
    const-string p1, "N/A"

    return-object p1
.end method

.method public static isSupportFido()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scorpio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;
    .registers 3

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lmiui/cloud/common/XDeviceInfo;->syncGet(Landroid/content/Context;Z)Lmiui/cloud/common/XDeviceInfo;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized syncGet(Landroid/content/Context;Z)Lmiui/cloud/common/XDeviceInfo;
    .registers 5

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    if-nez v1, :cond_21

    new-instance v1, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v1, p0, p1}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    goto :goto_28

    :cond_21
    new-instance v2, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v2, p0, v1, p1}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;Z)V

    sput-object v2, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    :goto_28
    sget-object p0, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_34

    monitor-exit v0

    return-object p0

    :cond_2c
    :try_start_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "syncGet can not be called in the main thread. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "type: %s, deviceid: %s, IMEM: %s, SN: %s, MAC: %s, model: %s, keyStoreType: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
