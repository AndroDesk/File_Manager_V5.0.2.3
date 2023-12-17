.class Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;
.super Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterpolatorController"
.end annotation


# instance fields
.field private mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

.field private mReboundTime:J

.field private mReboundTimeExp:Lcom/miui/maml/data/Expression;

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/animation/interpolater/InterpolatorHelper;Lcom/miui/maml/data/Expression;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 9
    iput-object p3, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lcom/miui/maml/data/Expression;

    .line 11
    return-void
.end method


# virtual methods
.method public getDistance(J)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-ltz v2, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    .line 10
    iget-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 12
    double-to-long p1, p1

    .line 13
    return-wide p1

    .line 14
    :cond_d
    long-to-float p1, p1

    .line 15
    long-to-float p2, v0

    .line 16
    div-float/2addr p1, p2

    .line 17
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 19
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 21
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    .line 24
    move-result p1

    .line 25
    float-to-double p1, p1

    .line 26
    mul-double/2addr v0, p1

    .line 27
    double-to-long p1, v0

    .line 28
    return-wide p1
.end method

.method public onStart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    .line 10
    return-void
.end method
