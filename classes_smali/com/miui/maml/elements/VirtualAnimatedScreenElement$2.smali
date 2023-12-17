.class final Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;
.super Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "VirtualAnimatedScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I
    .registers 4

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

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

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;->getIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;)I

    move-result p1

    return p1
.end method

.method public setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V
    .registers 5

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_e

    .line 3
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;->setIntValue(Lcom/miui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .registers 5

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    if-eqz v0, :cond_e

    .line 3
    check-cast p1, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
