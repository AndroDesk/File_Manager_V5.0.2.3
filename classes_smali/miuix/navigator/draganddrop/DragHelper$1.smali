.class Lmiuix/navigator/draganddrop/DragHelper$1;
.super Ljava/lang/Object;
.source "DragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/draganddrop/DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/draganddrop/DragHelper;


# direct methods
.method public constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private getMaxDragScroll()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$1000(Lmiuix/navigator/draganddrop/DragHelper;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private interpolateOutOfBoundsScroll(IJ)I
    .registers 9

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper$1;->getMaxDragScroll()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 8
    move-result v1

    .line 9
    int-to-float v2, p1

    .line 10
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 13
    move-result v2

    .line 14
    float-to-int v2, v2

    .line 15
    int-to-float v1, v1

    .line 16
    const/high16 v3, 0x3f800000  # 1.0f

    .line 18
    mul-float/2addr v1, v3

    .line 19
    iget-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 21
    invoke-static {v4}, Lmiuix/navigator/draganddrop/DragHelper;->access$700(Lmiuix/navigator/draganddrop/DragHelper;)I

    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    div-float/2addr v1, v4

    .line 27
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 30
    move-result v1

    .line 31
    mul-int/2addr v2, v0

    .line 32
    int-to-float v0, v2

    .line 33
    invoke-static {}, Lmiuix/navigator/draganddrop/DragHelper;->access$800()Landroid/view/animation/Interpolator;

    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 40
    move-result v1

    .line 41
    mul-float/2addr v1, v0

    .line 42
    float-to-int v0, v1

    .line 43
    const-wide/16 v1, 0x7d0

    .line 45
    cmp-long v1, p2, v1

    .line 47
    if-lez v1, :cond_31

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    long-to-float p2, p2

    .line 51
    const/high16 p3, 0x44fa0000  # 2000.0f

    .line 53
    div-float v3, p2, p3

    .line 55
    :goto_36
    int-to-float p2, v0

    .line 56
    invoke-static {}, Lmiuix/navigator/draganddrop/DragHelper;->access$900()Landroid/view/animation/Interpolator;

    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p3, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 63
    move-result p3

    .line 64
    mul-float/2addr p3, p2

    .line 65
    float-to-int p2, p3

    .line 66
    if-nez p2, :cond_49

    .line 68
    if-lez p1, :cond_47

    .line 70
    const/4 p1, 0x1

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    const/4 p1, -0x1

    .line 73
    :goto_48
    return p1

    .line 74
    :cond_49
    return p2
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 7
    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper;->access$300(Lmiuix/navigator/draganddrop/DragHelper;)J

    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, -0x1

    .line 13
    cmp-long v2, v2, v4

    .line 15
    if-nez v2, :cond_15

    .line 17
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 19
    invoke-static {v2, v0, v1}, Lmiuix/navigator/draganddrop/DragHelper;->access$302(Lmiuix/navigator/draganddrop/DragHelper;J)J

    .line 22
    :cond_15
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 24
    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper;->access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 30
    invoke-static {v3}, Lmiuix/navigator/draganddrop/DragHelper;->access$400(Lmiuix/navigator/draganddrop/DragHelper;)I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_42

    .line 40
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 42
    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper;->access$400(Lmiuix/navigator/draganddrop/DragHelper;)I

    .line 45
    move-result v2

    .line 46
    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 48
    invoke-static {v3}, Lmiuix/navigator/draganddrop/DragHelper;->access$300(Lmiuix/navigator/draganddrop/DragHelper;)J

    .line 51
    move-result-wide v3

    .line 52
    sub-long/2addr v0, v3

    .line 53
    invoke-direct {p0, v2, v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$1;->interpolateOutOfBoundsScroll(IJ)I

    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 59
    invoke-static {v1}, Lmiuix/navigator/draganddrop/DragHelper;->access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    .line 69
    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$600(Lmiuix/navigator/draganddrop/DragHelper;)V

    .line 72
    return-void
.end method
