.class Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;
.super Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeedAccController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lcom/miui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

.field private mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 7
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "bounceInitSpeed"

    .line 13
    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 23
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "bounceAcceleration"

    .line 29
    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 39
    iget-boolean p2, p1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 41
    if-eqz p2, :cond_45

    .line 43
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    iget-object v1, p1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 52
    const-string v2, "."

    .line 54
    const-string v3, "bounce_progress"

    .line 56
    invoke-static {v0, v1, v2, v3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 68
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    :cond_45
    return-void
.end method


# virtual methods
.method public getDistance(J)J
    .registers 13

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 3
    int-to-long v1, v0

    .line 4
    mul-long/2addr v1, p1

    .line 5
    const-wide/16 v3, 0x3e8

    .line 7
    div-long/2addr v1, v3

    .line 8
    iget v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 10
    int-to-long v6, v5

    .line 11
    mul-long/2addr v6, p1

    .line 12
    mul-long/2addr v6, p1

    .line 13
    const-wide/32 v8, 0x1e8480

    .line 16
    div-long/2addr v6, v8

    .line 17
    add-long/2addr v6, v1

    .line 18
    int-to-long v0, v0

    .line 19
    int-to-long v8, v5

    .line 20
    mul-long/2addr v8, p1

    .line 21
    div-long/2addr v8, v3

    .line 22
    add-long/2addr v8, v0

    .line 23
    const-wide/16 p1, 0x0

    .line 25
    cmp-long p1, v8, p1

    .line 27
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 29
    if-gtz p1, :cond_28

    .line 31
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 34
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    if-eqz p1, :cond_28

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 41
    :cond_28
    iget-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 43
    const-wide/16 v2, 0x0

    .line 45
    cmpl-double v2, p1, v2

    .line 47
    if-lez v2, :cond_3f

    .line 49
    long-to-double v2, v6

    .line 50
    div-double/2addr v2, p1

    .line 51
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 53
    if-eqz p1, :cond_3f

    .line 55
    cmpl-double p2, v2, v0

    .line 57
    if-lez p2, :cond_3b

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move-wide v0, v2

    .line 61
    :goto_3c
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 64
    :cond_3f
    return-wide v6
.end method

.method public init()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 13
    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 10
    move-result-wide v0

    .line 11
    double-to-int v0, v0

    .line 12
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 20
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ScreenElement;->evaluate(Lcom/miui/maml/data/Expression;)D

    .line 23
    move-result-wide v0

    .line 24
    double-to-int v0, v0

    .line 25
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    .line 29
    if-eqz v0, :cond_23

    .line 31
    const-wide/16 v1, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 36
    :cond_23
    return-void
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 12
    :goto_b
    return-void
.end method
