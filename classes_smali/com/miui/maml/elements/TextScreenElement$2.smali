.class final Lcom/miui/maml/elements/TextScreenElement$2;
.super Lcom/miui/maml/folme/AnimatedProperty;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/TextScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/folme/AnimatedProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F
    .registers 4

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_10

    .line 3
    check-cast p1, Lcom/miui/maml/elements/TextScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/TextScreenElement;->access$100(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_10
    const/high16 p1, 0x41900000  # 18.0f

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/TextScreenElement$2;->getValue(Lcom/miui/maml/elements/AnimatedScreenElement;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .registers 5

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_e

    .line 3
    check-cast p1, Lcom/miui/maml/elements/TextScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/TextScreenElement;->access$100(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_e
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement$2;->setValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V
    .registers 5

    .line 2
    instance-of v0, p1, Lcom/miui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_e

    .line 3
    check-cast p1, Lcom/miui/maml/elements/TextScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/TextScreenElement;->access$100(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement$2;->setVelocityValue(Lcom/miui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method
