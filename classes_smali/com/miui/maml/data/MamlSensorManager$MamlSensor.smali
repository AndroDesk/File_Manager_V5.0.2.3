.class Lcom/miui/maml/data/MamlSensorManager$MamlSensor;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/MamlSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlSensor"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/hardware/SensorEventListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;-><init>(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)V

    .line 23
    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 25
    const-string v0, "MAML_SensorManager"

    .line 27
    const/4 v1, -0x1

    .line 28
    if-ne p2, v1, :cond_32

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string p3, "Wront sensor type: "

    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 51
    :cond_32
    iput p2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 53
    iput p3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 55
    const-string p3, "sensor"

    .line 57
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/hardware/SensorManager;

    .line 63
    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 65
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 71
    if-nez p1, :cond_5a

    .line 73
    const-string p1, "Fail to get sensor! TYPE: "

    .line 75
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object p1

    .line 79
    iget p2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_5a
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method private registerListener()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 3
    if-eqz v0, :cond_31

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 7
    if-nez v1, :cond_31

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 11
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 13
    iget v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 15
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 21
    const-string v0, "MAML_SensorManager"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v2, "registerListener "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_31

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    :cond_31
    :goto_31
    iget-boolean v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 52
    return v0
.end method

.method private unRegisterListener()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 3
    if-eqz v0, :cond_2f

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 7
    if-eqz v1, :cond_2f

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 11
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 19
    const-string v0, "MAML_SensorManager"

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v2, "unregisterListener "

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_2f

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/hardware/SensorEventListener;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, p2, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_22

    .line 14
    const/4 p2, 0x0

    .line 15
    iget v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 17
    if-ge v0, p1, :cond_15

    .line 19
    iput p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 21
    const/4 p2, 0x1

    .line 22
    :cond_15
    if-eqz p2, :cond_1e

    .line 24
    iget-boolean p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 26
    if-eqz p1, :cond_1e

    .line 28
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 31
    :cond_1e
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    .line 34
    return-void

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .line 37
    throw p1
.end method

.method public removeCallback(Landroid/hardware/SensorEventListener;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 12
    if-nez v1, :cond_f

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/4 p1, 0x0

    .line 22
    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v3

    .line 28
    if-ne v2, v3, :cond_4e

    .line 30
    const/4 v2, 0x3

    .line 31
    iput v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 33
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 35
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_45

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Integer;

    .line 55
    iget v4, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 57
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v5

    .line 61
    if-le v4, v5, :cond_2a

    .line 63
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v3

    .line 67
    iput v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 69
    goto :goto_2a

    .line 70
    :cond_45
    iget v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v1

    .line 76
    if-eq v2, v1, :cond_4e

    .line 78
    const/4 p1, 0x1

    .line 79
    :cond_4e
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 81
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_5a

    .line 87
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 90
    goto :goto_62

    .line 91
    :cond_5a
    if-eqz p1, :cond_62

    .line 93
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 96
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    .line 99
    :cond_62
    :goto_62
    monitor-exit v0

    .line 100
    return-void

    .line 101
    :catchall_64
    move-exception p1

    .line 102
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    .line 103
    throw p1
.end method
