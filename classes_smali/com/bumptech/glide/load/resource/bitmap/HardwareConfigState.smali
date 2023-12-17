.class public final Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;
.super Ljava/lang/Object;
.source "HardwareConfigState.java"


# static fields
.field private static final FD_SIZE_LIST:Ljava/io/File;

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_O:I = 0x2bc

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_P:I = 0x4e20

.field private static final MINIMUM_DECODES_BETWEEN_FD_CHECKS:I = 0x32

.field public static final MIN_HARDWARE_DIMENSION_O:I = 0x80

.field private static final MIN_HARDWARE_DIMENSION_P:I

.field private static volatile instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;


# instance fields
.field private decodesSinceLastFdCheck:I

.field private final fdCountLimit:I

.field private isFdSizeBelowHardwareLimit:Z

.field private final isHardwareConfigAllowedByDeviceModel:Z

.field private final minHardwareDimension:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/proc/self/fd"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->FD_SIZE_LIST:Ljava/io/File;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z

    .line 7
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByDeviceModel()Z

    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByDeviceModel:Z

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const/16 v1, 0x1c

    .line 17
    if-lt v0, v1, :cond_1a

    .line 19
    const/16 v0, 0x4e20

    .line 21
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->fdCountLimit:I

    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->minHardwareDimension:I

    .line 26
    goto :goto_22

    .line 27
    :cond_1a
    const/16 v0, 0x2bc

    .line 29
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->fdCountLimit:I

    .line 31
    const/16 v0, 0x80

    .line 33
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->minHardwareDimension:I

    .line 35
    :goto_22
    return-void
.end method

.method public static getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 14
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;-><init>()V

    .line 17
    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 26
    return-object v0
.end method

.method private declared-synchronized isFdSizeBelowHardwareLimit()Z
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    .line 4
    const/4 v1, 0x1

    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    .line 8
    const/16 v2, 0x32

    .line 10
    if-lt v0, v2, :cond_48

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    .line 15
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->FD_SIZE_LIST:Ljava/io/File;

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    array-length v2, v2

    .line 22
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->fdCountLimit:I

    .line 24
    if-ge v2, v3, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v0

    .line 28
    :goto_1b
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z

    .line 30
    if-nez v1, :cond_48

    .line 32
    const-string v0, "Downsampler"

    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_48

    .line 41
    const-string v0, "Downsampler"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v3, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, ", limit "

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->fdCountLimit:I

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_48
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 75
    monitor-exit p0

    .line 76
    return v0

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    monitor-exit p0

    .line 79
    throw v0
.end method

.method private static isHardwareConfigAllowedByDeviceModel()Z
    .registers 5

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_77

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x7

    .line 11
    if-ge v2, v3, :cond_e

    .line 13
    goto/16 :goto_77

    .line 15
    :cond_e
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const/4 v3, -0x1

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 27
    move-result v4

    .line 28
    sparse-switch v4, :sswitch_data_78

    .line 31
    goto :goto_6b

    .line 32
    :sswitch_1f
    const-string v4, "SM-N935"

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_28

    .line 40
    goto :goto_6b

    .line 41
    :cond_28
    const/4 v3, 0x6

    .line 42
    goto :goto_6b

    .line 43
    :sswitch_2a
    const-string v4, "SM-J720"

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_33

    .line 51
    goto :goto_6b

    .line 52
    :cond_33
    const/4 v3, 0x5

    .line 53
    goto :goto_6b

    .line 54
    :sswitch_35
    const-string v4, "SM-G965"

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3e

    .line 62
    goto :goto_6b

    .line 63
    :cond_3e
    const/4 v3, 0x4

    .line 64
    goto :goto_6b

    .line 65
    :sswitch_40
    const-string v4, "SM-G960"

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_49

    .line 73
    goto :goto_6b

    .line 74
    :cond_49
    const/4 v3, 0x3

    .line 75
    goto :goto_6b

    .line 76
    :sswitch_4b
    const-string v4, "SM-G935"

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_54

    .line 84
    goto :goto_6b

    .line 85
    :cond_54
    const/4 v3, 0x2

    .line 86
    goto :goto_6b

    .line 87
    :sswitch_56
    const-string v4, "SM-G930"

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5f

    .line 95
    goto :goto_6b

    .line 96
    :cond_5f
    move v3, v1

    .line 97
    goto :goto_6b

    .line 98
    :sswitch_61
    const-string v4, "SM-A520"

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_6a

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v3, v2

    .line 108
    :goto_6b
    packed-switch v3, :pswitch_data_96

    .line 111
    return v1

    .line 112
    :pswitch_6f  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    const/16 v3, 0x1a

    .line 116
    if-eq v0, v3, :cond_76

    .line 118
    goto :goto_77

    .line 119
    :cond_76
    move v1, v2

    .line 120
    :cond_77
    :goto_77
    return v1

    .line 121
    :sswitch_data_78
    .sparse-switch
        -0x535d271b -> :sswitch_61
        -0x535a5dbe -> :sswitch_56
        -0x535a5db9 -> :sswitch_4b
        -0x535a5d61 -> :sswitch_40
        -0x535a5d5c -> :sswitch_35
        -0x53590842 -> :sswitch_2a
        -0x53572f20 -> :sswitch_1f
    .end sparse-switch

    .line 151
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6f  #00000001
        :pswitch_6f  #00000002
        :pswitch_6f  #00000003
        :pswitch_6f  #00000004
        :pswitch_6f  #00000005
        :pswitch_6f  #00000006
    .end packed-switch
.end method


# virtual methods
.method public isHardwareConfigAllowed(IIZZ)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1d

    .line 4
    iget-boolean p3, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByDeviceModel:Z

    .line 6
    if-eqz p3, :cond_1d

    .line 8
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v1, 0x1a

    .line 12
    if-lt p3, v1, :cond_1d

    .line 14
    if-eqz p4, :cond_10

    .line 16
    goto :goto_1d

    .line 17
    :cond_10
    iget p3, p0, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->minHardwareDimension:I

    .line 19
    if-lt p1, p3, :cond_1d

    .line 21
    if-lt p2, p3, :cond_1d

    .line 23
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1d

    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1d
    :goto_1d
    return v0
.end method

.method public setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;ZZ)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_d

    .line 7
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 9
    iput-object p2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 14
    :cond_d
    return p1
.end method
