.class public Lcom/miui/maml/data/SensorBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/SensorBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static final THRESHOLD:F = 0.1f


# instance fields
.field private mEnable:Z

.field private mPaused:Z

.field private mRate:I

.field private mRegistered:Z

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mThreshold:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 7
    const-string p2, "type"

    .line 9
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 15
    const-string p2, "rate"

    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lcom/miui/maml/data/SensorBinder;->mRate:I

    .line 24
    const-string p2, "threshold"

    .line 26
    const v0, 0x3dcccccd  # 0.1f

    .line 29
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 32
    move-result p2

    .line 33
    iput p2, p0, Lcom/miui/maml/data/SensorBinder;->mThreshold:F

    .line 35
    const-string p2, "enable"

    .line 37
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_34

    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 50
    move-result p2

    .line 51
    iput-boolean p2, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 53
    :cond_34
    new-instance p2, Lcom/miui/maml/data/SensorBinder$1;

    .line 55
    invoke-direct {p2, p0}, Lcom/miui/maml/data/SensorBinder$1;-><init>(Lcom/miui/maml/data/SensorBinder;)V

    .line 58
    iput-object p2, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 60
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 63
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/data/SensorBinder;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/data/SensorBinder;->mThreshold:F

    .line 3
    return p0
.end method

.method private registerListener()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_1c

    .line 10
    :cond_9
    invoke-static {}, Lcom/miui/maml/data/MamlSensorManager;->getInstance()Lcom/miui/maml/data/MamlSensorManager;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 20
    iget-object v2, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 22
    iget v3, p0, Lcom/miui/maml/data/SensorBinder;->mRate:I

    .line 24
    iget-object v4, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/maml/data/MamlSensorManager;->registerListener(Landroid/content/Context;Ljava/lang/String;ILandroid/hardware/SensorEventListener;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method private unregisterListener()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/miui/maml/data/MamlSensorManager;->getInstance()Lcom/miui/maml/data/MamlSensorManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/MamlSensorManager;->unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 4
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 7
    return-void
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 4
    return-void
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SensorBinder$Variable;
    .registers 4

    .line 2
    new-instance v0, Lcom/miui/maml/data/SensorBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SensorBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SensorBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 10
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->registerListener()V

    .line 10
    return-void
.end method

.method public turnOffSensorBinder()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 7
    return-void
.end method

.method public turnOnSensorBinder()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->registerListener()V

    .line 7
    return-void
.end method
