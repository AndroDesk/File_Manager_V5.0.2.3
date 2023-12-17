.class public final Landroidx/recyclerview/widget/w;
.super Landroidx/recyclerview/widget/k;
.source "SnapHelper.java"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/v;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/v;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/v;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/k;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 v0, 0x42c80000  # 100.0f

    .line 6
    div-float/2addr v0, p1

    .line 7
    return v0
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .registers 7

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/v;

    .line 3
    iget-object v0, p2, Landroidx/recyclerview/widget/v;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/v;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    aget p2, p1, p2

    .line 19
    const/4 v0, 0x1

    .line 20
    aget p1, p1, v0

    .line 22
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 25
    move-result v1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 29
    move-result v2

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/k;->calculateTimeForDeceleration(I)I

    .line 37
    move-result v1

    .line 38
    if-lez v1, :cond_33

    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/k;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 42
    iput p2, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    .line 44
    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    .line 46
    iput v1, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    .line 48
    iput-object v2, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    .line 50
    iput-boolean v0, p3, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 52
    :cond_33
    return-void
.end method
