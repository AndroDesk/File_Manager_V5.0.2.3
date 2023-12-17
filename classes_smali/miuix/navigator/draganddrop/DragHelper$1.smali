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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaxDragScroll()I
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$1000(Lmiuix/navigator/draganddrop/DragHelper;)I

    move-result v0

    return v0
.end method

.method private interpolateOutOfBoundsScroll(IJ)I
    .registers 9

    invoke-direct {p0}, Lmiuix/navigator/draganddrop/DragHelper$1;->getMaxDragScroll()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v1, v3

    iget-object v4, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v4}, Lmiuix/navigator/draganddrop/DragHelper;->access$700(Lmiuix/navigator/draganddrop/DragHelper;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-int/2addr v2, v0

    int-to-float v0, v2

    invoke-static {}, Lmiuix/navigator/draganddrop/DragHelper;->access$800()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const-wide/16 v1, 0x7d0

    cmp-long v1, p2, v1

    if-lez v1, :cond_31

    goto :goto_36

    :cond_31
    long-to-float p2, p2

    const/high16 p3, 0x44fa0000  # 2000.0f

    div-float v3, p2, p3

    :goto_36
    int-to-float p2, v0

    invoke-static {}, Lmiuix/navigator/draganddrop/DragHelper;->access$900()Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-interface {p3, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    if-nez p2, :cond_49

    if-lez p1, :cond_47

    const/4 p1, 0x1

    goto :goto_48

    :cond_47
    const/4 p1, -0x1

    :goto_48
    return p1

    :cond_49
    return p2
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper;->access$300(Lmiuix/navigator/draganddrop/DragHelper;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_15

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v2, v0, v1}, Lmiuix/navigator/draganddrop/DragHelper;->access$302(Lmiuix/navigator/draganddrop/DragHelper;J)J

    :cond_15
    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper;->access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v3}, Lmiuix/navigator/draganddrop/DragHelper;->access$400(Lmiuix/navigator/draganddrop/DragHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v2}, Lmiuix/navigator/draganddrop/DragHelper;->access$400(Lmiuix/navigator/draganddrop/DragHelper;)I

    move-result v2

    iget-object v3, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v3}, Lmiuix/navigator/draganddrop/DragHelper;->access$300(Lmiuix/navigator/draganddrop/DragHelper;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lmiuix/navigator/draganddrop/DragHelper$1;->interpolateOutOfBoundsScroll(IJ)I

    move-result v0

    iget-object v1, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v1}, Lmiuix/navigator/draganddrop/DragHelper;->access$500(Lmiuix/navigator/draganddrop/DragHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_42
    iget-object v0, p0, Lmiuix/navigator/draganddrop/DragHelper$1;->this$0:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->access$600(Lmiuix/navigator/draganddrop/DragHelper;)V

    return-void
.end method
