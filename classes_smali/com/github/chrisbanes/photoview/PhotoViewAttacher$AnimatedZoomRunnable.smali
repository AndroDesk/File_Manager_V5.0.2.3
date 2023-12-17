.class Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/chrisbanes/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field public final synthetic this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;FFFF)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 8
    iput p5, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide p4

    .line 14
    iput-wide p4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 16
    iput p2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 18
    iput p3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 20
    return-void
.end method

.method private interpolate()F
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    const/high16 v1, 0x3f800000  # 1.0f

    .line 11
    mul-float/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 14
    invoke-static {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$800(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)I

    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v0, v2

    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 26
    invoke-static {v1}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$900(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 33
    move-result v0

    .line 34
    return v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 7
    iget v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 9
    invoke-static {v2, v1, v0, v1}, Lf0/e;->a(FFFF)F

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 15
    invoke-virtual {v2}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->getScale()F

    .line 18
    move-result v2

    .line 19
    div-float/2addr v1, v2

    .line 20
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 22
    iget v3, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 24
    iget v4, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->onScale(FFF)V

    .line 29
    const/high16 v1, 0x3f800000  # 1.0f

    .line 31
    cmpg-float v0, v0, v1

    .line 33
    if-gez v0, :cond_2b

    .line 35
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/github/chrisbanes/photoview/PhotoViewAttacher;

    .line 37
    invoke-static {v0}, Lcom/github/chrisbanes/photoview/PhotoViewAttacher;->access$100(Lcom/github/chrisbanes/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0, p0}, Lcom/github/chrisbanes/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 44
    :cond_2b
    return-void
.end method
