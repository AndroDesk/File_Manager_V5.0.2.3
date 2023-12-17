.class public Lcom/miui/maml/elements/AutoScaleElementGroup;
.super Lcom/miui/maml/elements/ElementGroup;
.source "AutoScaleElementGroup.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AutoScaleGroup"


# instance fields
.field private mInitRawHeight:F

.field private mInitRawWidth:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getScaleX()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawWidth:F

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v3, v1, v2

    .line 10
    if-lez v3, :cond_16

    .line 12
    cmpl-float v2, v0, v2

    .line 14
    if-lez v2, :cond_16

    .line 16
    div-float/2addr v0, v1

    .line 17
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 20
    move-result v1

    .line 21
    mul-float/2addr v0, v1

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public getScaleY()F
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawHeight:F

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v3, v1, v2

    .line 10
    if-lez v3, :cond_16

    .line 12
    cmpl-float v2, v0, v2

    .line 14
    if-lez v2, :cond_16

    .line 16
    div-float/2addr v0, v1

    .line 17
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 20
    move-result v1

    .line 21
    mul-float/2addr v0, v1

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawWidth:F

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/maml/elements/AutoScaleElementGroup;->mInitRawHeight:F

    .line 16
    return-void
.end method
