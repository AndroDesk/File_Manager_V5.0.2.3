.class Lcom/miui/maml/data/SensorBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/SensorBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field public mIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 4
    const-string p2, "index"

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 13
    return-void
.end method
