.class Lcom/google/firebase/crashlytics/internal/common/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# static fields
.field public static final VELOCITY_CHARGING:I = 0x2

.field public static final VELOCITY_FULL:I = 0x3

.field public static final VELOCITY_UNPLUGGED:I = 0x1


# instance fields
.field private final level:Ljava/lang/Float;

.field private final powerConnected:Z


# direct methods
.method private constructor <init>(Ljava/lang/Float;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    .line 6
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    .line 8
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/common/BatteryState;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_17

    .line 15
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->isPowerConnected(Landroid/content/Intent;)Z

    .line 18
    move-result v0

    .line 19
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->getLevel(Landroid/content/Intent;)Ljava/lang/Float;

    .line 22
    move-result-object v1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    :goto_18
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;-><init>(Ljava/lang/Float;Z)V

    .line 30
    return-object p0
.end method

.method private static getLevel(Landroid/content/Intent;)Ljava/lang/Float;
    .registers 4

    .line 1
    const-string v0, "level"

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const-string v2, "scale"

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 14
    if-eq v0, v1, :cond_1a

    .line 16
    if-ne p0, v1, :cond_12

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    int-to-float v0, v0

    .line 20
    int-to-float p0, p0

    .line 21
    div-float/2addr v0, p0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private static isPowerConnected(Landroid/content/Intent;)Z
    .registers 3

    const-string v0, "status"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v1, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    const/4 v1, 0x5

    if-ne p0, v1, :cond_12

    :cond_11
    const/4 v0, 0x1

    :cond_12
    return v0
.end method


# virtual methods
.method public getBatteryLevel()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    .line 3
    return-object v0
.end method

.method public getBatteryVelocity()I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_1b

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 13
    move-result v0

    .line 14
    float-to-double v0, v0

    .line 15
    const-wide v2, 0x3fefae147ae147aeL  # 0.99

    .line 20
    cmpg-double v0, v0, v2

    .line 22
    if-gez v0, :cond_19

    .line 24
    const/4 v0, 0x2

    .line 25
    return v0

    .line 26
    :cond_19
    const/4 v0, 0x3

    .line 27
    return v0

    .line 28
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method public isPowerConnected()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    return v0
.end method
