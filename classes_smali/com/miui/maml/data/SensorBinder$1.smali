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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/SensorBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    iget-object v1, v1, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/data/VariableBinder$Variable;

    check-cast v3, Lcom/miui/maml/data/SensorBinder$Variable;

    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ltz v4, :cond_c

    if-ge v4, v0, :cond_c

    invoke-virtual {v3}, Lcom/miui/maml/data/VariableBinder$Variable;->getNumber()D

    move-result-wide v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v7, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    aget v6, v6, v7

    float-to-double v6, v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    invoke-static {v6}, Lcom/miui/maml/data/SensorBinder;->access$000(Lcom/miui/maml/data/SensorBinder;)F

    move-result v6

    float-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_c

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    aget v2, v2, v4

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    const/4 v2, 0x1

    goto :goto_c

    :cond_47
    if-eqz v2, :cond_4e

    iget-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    invoke-virtual {p1}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    :cond_4e
    return-void
.end method
