.class Lcom/miui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/SensorBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/SensorBinder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 6
    iget-object v1, v1, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_47

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 25
    check-cast v3, Lcom/miui/maml/data/SensorBinder$Variable;

    .line 27
    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 29
    if-ltz v4, :cond_c

    .line 31
    if-ge v4, v0, :cond_c

    .line 33
    invoke-virtual {v3}, Lcom/miui/maml/data/VariableBinder$Variable;->getNumber()D

    .line 36
    move-result-wide v4

    .line 37
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 39
    iget v7, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 41
    aget v6, v6, v7

    .line 43
    float-to-double v6, v6

    .line 44
    sub-double/2addr v4, v6

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 48
    move-result-wide v4

    .line 49
    iget-object v6, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 51
    invoke-static {v6}, Lcom/miui/maml/data/SensorBinder;->access$000(Lcom/miui/maml/data/SensorBinder;)F

    .line 54
    move-result v6

    .line 55
    float-to-double v6, v6

    .line 56
    cmpl-double v4, v4, v6

    .line 58
    if-lez v4, :cond_c

    .line 60
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 62
    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 64
    aget v2, v2, v4

    .line 66
    float-to-double v4, v2

    .line 67
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 70
    const/4 v2, 0x1

    .line 71
    goto :goto_c

    .line 72
    :cond_47
    if-eqz v2, :cond_4e

    .line 74
    iget-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 76
    invoke-virtual {p1}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 79
    :cond_4e
    return-void
.end method
