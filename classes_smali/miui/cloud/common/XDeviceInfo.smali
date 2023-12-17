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

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    const-string v1, "leo"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "andromeda"

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "begonia"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "davinciin"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v1, "raphaelin"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v1, "begoniain"

    .line 33
    const-string v2, "hennessy"

    .line 35
    const-string v3, "olivelite"

    .line 37
    const-string v4, "olivewood"

    .line 39
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "libra"

    .line 44
    const-string v2, "aqua"

    .line 46
    const-string v3, "gemini"

    .line 48
    const-string v4, "gold"

    .line 50
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "vela"

    .line 55
    const-string v2, "kenzo"

    .line 57
    const-string v3, "grus"

    .line 59
    const-string v4, "tucana"

    .line 61
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "ido"

    .line 66
    const-string v2, "hydrogen"

    .line 68
    const-string v3, "helium"

    .line 70
    const-string v4, "kate"

    .line 72
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "land"

    .line 77
    const-string v2, "lavender"

    .line 79
    const-string v3, "markw"

    .line 81
    const-string v4, "nikel"

    .line 83
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "omega"

    .line 88
    const-string v2, "cepheus"

    .line 90
    const-string v3, "capricorn"

    .line 92
    const-string v4, "laurus"

    .line 94
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "prada"

    .line 99
    const-string v2, "lithium"

    .line 101
    const-string v3, "scorpio"

    .line 103
    const-string v4, "natrium"

    .line 105
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "rolex"

    .line 110
    const-string v2, "mido"

    .line 112
    const-string v3, "santoni"

    .line 114
    const-string v4, "ginkgo"

    .line 116
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "sagit"

    .line 121
    const-string v2, "centaur"

    .line 123
    const-string v3, "oxygen"

    .line 125
    const-string v4, "tiffany"

    .line 127
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "ulysse"

    .line 132
    const-string v2, "ugglite"

    .line 134
    const-string v3, "chiron"

    .line 136
    const-string v4, "ugg"

    .line 138
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "jason"

    .line 143
    const-string v2, "riva"

    .line 145
    const-string v3, "crux"

    .line 147
    const-string v4, "vince"

    .line 149
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "rosy"

    .line 154
    const-string v2, "meri"

    .line 156
    const-string v3, "davinci"

    .line 158
    const-string v4, "pine"

    .line 160
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "whyred"

    .line 165
    const-string v2, "dipper"

    .line 167
    const-string v3, "onc"

    .line 169
    const-string v4, "polaris"

    .line 171
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "pyxis"

    .line 176
    const-string v2, "ysl"

    .line 178
    const-string v3, "wayne"

    .line 180
    const-string v4, "nitrogen"

    .line 182
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "sirius"

    .line 187
    const-string v2, "sakura"

    .line 189
    const-string v3, "sakura_india"

    .line 191
    const-string v4, "beryllium"

    .line 193
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "violet"

    .line 198
    const-string v2, "raphael"

    .line 200
    const-string v3, "cactus"

    .line 202
    const-string v4, "cereus"

    .line 204
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "lotus"

    .line 209
    const-string v2, "willow"

    .line 211
    const-string v3, "clover"

    .line 213
    const-string v4, "ursa"

    .line 215
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "olive"

    .line 220
    const-string v2, "tulip"

    .line 222
    const-string v3, "draco"

    .line 224
    const-string v4, "platina"

    .line 226
    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "perseus"

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "equuleus"

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_fd

    .line 251
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 253
    goto :goto_ff

    .line 254
    :cond_fd
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->NONE:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 256
    :goto_ff
    sput-object v0, Lmiui/cloud/common/XDeviceInfo;->sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 258
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;Z)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object v0, p2, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 13
    invoke-static {p1, p3}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    move-object p3, p1

    goto :goto_17

    .line 15
    :cond_13
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_17
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    .line 16
    sget-object p3, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, p3, :cond_1e

    goto :goto_20

    :cond_1e
    const-string p1, ""

    :goto_20
    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    .line 17
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    .line 18
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    .line 19
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    .line 20
    iget-object p1, p2, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    goto :goto_c

    :cond_a
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    :goto_c
    iput-object v0, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 3
    invoke-static {p1, p2}, Lmiui/cloud/common/XDeviceInfo;->blockingGetNakedDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, p2

    goto :goto_1e

    .line 5
    :cond_1a
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    iput-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    .line 6
    sget-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    if-ne v0, v1, :cond_25

    goto :goto_27

    :cond_25
    const-string p2, ""

    :goto_27
    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    .line 7
    sget-object p2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object p2, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lmiui/cloud/common/XDeviceInfo;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    .line 9
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    .line 10
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

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$1;

    invoke-direct {v1, p1, p0}, Lmiui/cloud/common/XDeviceInfo$1;-><init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
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

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/cloud/common/XDeviceInfo$2;

    invoke-direct {v1, p2, p0, p1}, Lmiui/cloud/common/XDeviceInfo$2;-><init>(Lmiui/cloud/common/XCallback;Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized blockingGetNakedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
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

    .line 2
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
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

    .line 4
    monitor-exit v0

    return-object p0

    :cond_1c
    const/4 v3, 0x0

    const-wide/32 v7, 0xea60

    .line 5
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

    .line 6
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 7
    :goto_30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 8
    sput-wide v1, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J

    const-string p0, ""
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_40

    .line 9
    monitor-exit v0

    return-object p0

    .line 10
    :cond_3c
    :try_start_3c
    sput-wide v5, Lmiui/cloud/common/XDeviceInfo;->sLastEmptyDeviceIdTime:J
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_40

    .line 11
    monitor-exit v0

    return-object v3

    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKeyStoreTypeUnblocking()Lmiui/cloud/common/XDeviceInfo$KeyStoreType;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$KeyStoreType;->TZ:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lmiui/cloud/common/XDeviceInfo;->sKeyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 12
    return-object v0
.end method

.method private getMAC(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 7
    move-result-object v2

    .line 8
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 16
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_96

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/net/NetworkInterface;

    .line 28
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_22

    .line 34
    goto :goto_f

    .line 35
    :cond_22
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    const-string v6, "wlan"

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 44
    move-result v5
    :try_end_2c
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_2c} :catch_8a

    .line 45
    const/4 v6, -0x1

    .line 46
    if-ne v5, v6, :cond_30

    .line 48
    goto :goto_f

    .line 49
    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 52
    move-result-object v3
    :try_end_34
    .catch Ljava/net/SocketException; {:try_start_30 .. :try_end_34} :catch_69

    .line 53
    if-nez v3, :cond_37

    .line 55
    goto :goto_f

    .line 56
    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    move v4, v0

    .line 62
    :goto_3d
    array-length v5, v3

    .line 63
    if-ge v4, v5, :cond_56

    .line 65
    const-string v5, "%02X:"

    .line 67
    new-array v6, v1, [Ljava/lang/Object;

    .line 69
    aget-byte v7, v3, v4

    .line 71
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 74
    move-result-object v7

    .line 75
    aput-object v7, v6, v0

    .line 77
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_3d

    .line 87
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 90
    move-result v3

    .line 91
    if-lez v3, :cond_64

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 96
    move-result v3

    .line 97
    sub-int/2addr v3, v1

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 101
    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :catch_69
    move-exception v3

    .line 107
    new-array v5, p1, [Ljava/lang/Object;

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v7, "Failed to get MAC for "

    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v4, ", continue. "

    .line 124
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 131
    aput-object v4, v5, v0

    .line 133
    aput-object v3, v5, v1

    .line 135
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/net/SocketException; {:try_start_37 .. :try_end_89} :catch_8a

    .line 138
    goto :goto_f

    .line 139
    :catch_8a
    move-exception v2

    .line 140
    new-array p1, p1, [Ljava/lang/Object;

    .line 142
    const-string v3, "Failed to get MAC. "

    .line 144
    aput-object v3, p1, v0

    .line 146
    aput-object v2, p1, v1

    .line 148
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 151
    :cond_96
    const-string p1, "N/A"

    .line 153
    return-object p1
.end method

.method public static isSupportFido()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "scorpio"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public static declared-synchronized syncGet(Landroid/content/Context;)Lmiui/cloud/common/XDeviceInfo;
    .registers 3

    const-class v0, Lmiui/cloud/common/XDeviceInfo;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
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

    .line 2
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

    .line 3
    sget-object v1, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    if-nez v1, :cond_21

    .line 4
    new-instance v1, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v1, p0, p1}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    goto :goto_28

    .line 5
    :cond_21
    new-instance v2, Lmiui/cloud/common/XDeviceInfo;

    invoke-direct {v2, p0, v1, p1}, Lmiui/cloud/common/XDeviceInfo;-><init>(Landroid/content/Context;Lmiui/cloud/common/XDeviceInfo;Z)V

    sput-object v2, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;

    .line 6
    :goto_28
    sget-object p0, Lmiui/cloud/common/XDeviceInfo;->sInstance:Lmiui/cloud/common/XDeviceInfo;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_34

    monitor-exit v0

    return-object p0

    .line 7
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

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->type:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->deviceId:Ljava/lang/String;

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 18
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->IMEI:Ljava/lang/String;

    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object v1, v0, v2

    .line 23
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->SN:Ljava/lang/String;

    .line 25
    const/4 v2, 0x3

    .line 26
    aput-object v1, v0, v2

    .line 28
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->MAC:Ljava/lang/String;

    .line 30
    const/4 v2, 0x4

    .line 31
    aput-object v1, v0, v2

    .line 33
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->model:Ljava/lang/String;

    .line 35
    const/4 v2, 0x5

    .line 36
    aput-object v1, v0, v2

    .line 38
    iget-object v1, p0, Lmiui/cloud/common/XDeviceInfo;->keyStoreType:Lmiui/cloud/common/XDeviceInfo$KeyStoreType;

    .line 40
    const/4 v2, 0x6

    .line 41
    aput-object v1, v0, v2

    .line 43
    const-string v1, "type: %s, deviceid: %s, IMEM: %s, SN: %s, MAC: %s, model: %s, keyStoreType: %s"

    .line 45
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
