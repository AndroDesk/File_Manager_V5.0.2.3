.class public Lcom/miui/maml/data/MamlSensorManager;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/MamlSensorManager$MamlSensor;,
        Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;
    }
.end annotation


# static fields
.field private static final INVALID_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MAML_SensorManager"

.field private static final sLock:Ljava/lang/Object;

.field private static sSensors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/data/MamlSensorManager$MamlSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcom/miui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/MamlSensorManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/maml/data/MamlSensorManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;->INSTANCE:Lcom/miui/maml/data/MamlSensorManager;

    .line 3
    return-object v0
.end method

.method private getType(Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x6

    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, -0x1

    .line 14
    sparse-switch v0, :sswitch_data_7c

    .line 17
    :goto_10
    move p1, v6

    .line 18
    goto/16 :goto_6a

    .line 20
    :sswitch_13
    const-string v0, "accelerometer"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1c

    .line 28
    goto :goto_10

    .line 29
    :cond_1c
    const/4 p1, 0x7

    .line 30
    goto :goto_6a

    .line 31
    :sswitch_1e
    const-string v0, "linear_acceleration"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_27

    .line 39
    goto :goto_10

    .line 40
    :cond_27
    move p1, v1

    .line 41
    goto :goto_6a

    .line 42
    :sswitch_29
    const-string v0, "gyroscope"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_32

    .line 50
    goto :goto_10

    .line 51
    :cond_32
    move p1, v2

    .line 52
    goto :goto_6a

    .line 53
    :sswitch_34
    const-string v0, "gravity"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3d

    .line 61
    goto :goto_10

    .line 62
    :cond_3d
    move p1, v3

    .line 63
    goto :goto_6a

    .line 64
    :sswitch_3f
    const-string v0, "light"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_48

    .line 72
    goto :goto_10

    .line 73
    :cond_48
    move p1, v4

    .line 74
    goto :goto_6a

    .line 75
    :sswitch_4a
    const-string v0, "proximity"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_53

    .line 83
    goto :goto_10

    .line 84
    :cond_53
    const/4 p1, 0x2

    .line 85
    goto :goto_6a

    .line 86
    :sswitch_55
    const-string v0, "pressure"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_5e

    .line 94
    goto :goto_10

    .line 95
    :cond_5e
    move p1, v5

    .line 96
    goto :goto_6a

    .line 97
    :sswitch_60
    const-string v0, "orientation"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_69

    .line 105
    goto :goto_10

    .line 106
    :cond_69
    const/4 p1, 0x0

    .line 107
    :goto_6a
    packed-switch p1, :pswitch_data_9e

    .line 110
    return v6

    .line 111
    :pswitch_6e  #0x7
    return v5

    .line 112
    :pswitch_6f  #0x6
    const/16 p1, 0xa

    .line 114
    return p1

    .line 115
    :pswitch_72  #0x5
    return v3

    .line 116
    :pswitch_73  #0x4
    const/16 p1, 0x9

    .line 118
    return p1

    .line 119
    :pswitch_76  #0x3
    return v2

    .line 120
    :pswitch_77  #0x2
    const/16 p1, 0x8

    .line 122
    return p1

    .line 123
    :pswitch_7a  #0x1
    return v1

    .line 124
    :pswitch_7b  #0x0
    return v4

    .line 125
    :sswitch_data_7c
    .sparse-switch
        -0x55cd0a30 -> :sswitch_60
        -0x4c11e9bb -> :sswitch_55
        -0x1d356f81 -> :sswitch_4a
        0x6233516 -> :sswitch_3f
        0x10b8724e -> :sswitch_34
        0x136a6d05 -> :sswitch_29
        0x1ed8b35a -> :sswitch_1e
        0x2998b04f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7b  #00000000
        :pswitch_7a  #00000001
        :pswitch_77  #00000002
        :pswitch_76  #00000003
        :pswitch_73  #00000004
        :pswitch_72  #00000005
        :pswitch_6f  #00000006
        :pswitch_6e  #00000007
    .end packed-switch
.end method

.method private getValidRate(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v0, :cond_a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p1, 0x3

    return p1

    :cond_a
    return v0
.end method


# virtual methods
.method public registerListener(Landroid/content/Context;Ljava/lang/String;ILandroid/hardware/SensorEventListener;)V
    .registers 8

    .line 1
    invoke-direct {p0, p3}, Lcom/miui/maml/data/MamlSensorManager;->getValidRate(I)I

    .line 4
    move-result p3

    .line 5
    sget-object v0, Lcom/miui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    .line 16
    if-eqz v1, :cond_15

    .line 18
    invoke-virtual {v1, p3, p4}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->addCallback(ILandroid/hardware/SensorEventListener;)V

    .line 21
    goto :goto_2c

    .line 22
    :cond_15
    new-instance v1, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    .line 24
    invoke-direct {p0, p2}, Lcom/miui/maml/data/MamlSensorManager;->getType(Ljava/lang/String;)I

    .line 27
    move-result v2

    .line 28
    invoke-direct {v1, p1, v2, p3}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;-><init>(Landroid/content/Context;II)V

    .line 31
    invoke-static {v1}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$100(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2c

    .line 37
    invoke-virtual {v1, p3, p4}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->addCallback(ILandroid/hardware/SensorEventListener;)V

    .line 40
    sget-object p1, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2c
    :goto_2c
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    .line 49
    throw p1
.end method

.method public unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/miui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    .line 12
    if-eqz v1, :cond_1f

    .line 14
    invoke-virtual {v1, p2}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->removeCallback(Landroid/hardware/SensorEventListener;)V

    .line 17
    invoke-static {v1}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1f

    .line 27
    sget-object p2, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_1f
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    .line 36
    throw p1
.end method
