.class final Lcom/miui/maml/elements/GeometryScreenElement$2;
.super Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GeometryScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I
    .registers 4

    instance-of v0, p1, Lcom/miui/maml/elements/GeometryScreenElement;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/miui/maml/elements/GeometryScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GeometryScreenElement;->access$100(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int p1, v0

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/GeometryScreenElement$2;->getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I

    move-result p1

    return p1
.end method

.method public setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V
    .registers 5

    instance-of v0, p1, Lcom/miui/maml/elements/GeometryScreenElement;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/miui/maml/elements/GeometryScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GeometryScreenElement;->access$100(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement$2;->setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .registers 5

    instance-of v0, p1, Lcom/miui/maml/elements/GeometryScreenElement;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/miui/maml/elements/GeometryScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/GeometryScreenElement;->access$100(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement$2;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method