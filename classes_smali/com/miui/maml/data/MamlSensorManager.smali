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

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/data/MamlSensorManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/maml/data/MamlSensorManager;
    .registers 1

    sget-object v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensorManagerHolder;->INSTANCE:Lcom/miui/maml/data/MamlSensorManager;

    return-object v0
.end method

.method private getType(Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_7c

    :goto_10
    move p1, v6

    goto/16 :goto_6a

    :sswitch_13
    const-string v0, "accelerometer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 p1, 0x7

    goto :goto_6a

    :sswitch_1e
    const-string v0, "linear_acceleration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_10

    :cond_27
    move p1, v1

    goto :goto_6a

    :sswitch_29
    const-string v0, "gyroscope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_10

    :cond_32
    move p1, v2

    goto :goto_6a

    :sswitch_34
    const-string v0, "gravity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_10

    :cond_3d
    move p1, v3

    goto :goto_6a

    :sswitch_3f
    const-string v0, "light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_10

    :cond_48
    move p1, v4

    goto :goto_6a

    :sswitch_4a
    const-string v0, "proximity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_10

    :cond_53
    const/4 p1, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v0, "pressure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_10

    :cond_5e
    move p1, v5

    goto :goto_6a

    :sswitch_60
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_10

    :cond_69
    const/4 p1, 0x0

    :goto_6a
    packed-switch p1, :pswitch_data_9e

    return v6

    :pswitch_6e  #0x7
    return v5

    :pswitch_6f  #0x6
    const/16 p1, 0xa

    return p1

    :pswitch_72  #0x5
    return v3

    :pswitch_73  #0x4
    const/16 p1, 0x9

    return p1

    :pswitch_76  #0x3
    return v2

    :pswitch_77  #0x2
    const/16 p1, 0x8

    return p1

    :pswitch_7a  #0x1
    return v1

    :pswitch_7b  #0x0
    return v4

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

    invoke-direct {p0, p3}, Lcom/miui/maml/data/MamlSensorManager;->getValidRate(I)I

    move-result p3

    sget-object v0, Lcom/miui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p3, p4}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->addCallback(ILandroid/hardware/SensorEventListener;)V

    goto :goto_2c

    :cond_15
    new-instance v1, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    invoke-direct {p0, p2}, Lcom/miui/maml/data/MamlSensorManager;->getType(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p1, v2, p3}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;-><init>(Landroid/content/Context;II)V

    invoke-static {v1}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$100(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-virtual {v1, p3, p4}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->addCallback(ILandroid/hardware/SensorEventListener;)V

    sget-object p1, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V
    .registers 5

    sget-object v0, Lcom/miui/maml/data/MamlSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p2}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->removeCallback(Landroid/hardware/SensorEventListener;)V

    invoke-static {v1}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    if-nez p2, :cond_1f

    sget-object p2, Lcom/miui/maml/data/MamlSensorManager;->sSensors:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method
