.class public final Landroidx/recyclerview/widget/RecyclerView$x$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroid/view/animation/Interpolator;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    .line 14
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    .line 16
    const/high16 v0, -0x80000000

    .line 18
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 8

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_e

    .line 6
    const/4 v2, -0x1

    .line 7
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 14
    return-void

    .line 15
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 17
    if-eqz v0, :cond_4c

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_24

    .line 24
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    .line 26
    if-lt v3, v2, :cond_1c

    .line 28
    goto :goto_24

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    const-string v0, "If you provide an interpolator, you must set a positive duration"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_24
    :goto_24
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    .line 39
    if-lt v3, v2, :cond_44

    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 43
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    .line 45
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    .line 47
    invoke-virtual {p1, v4, v5, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->c(IILandroid/view/animation/Interpolator;I)V

    .line 50
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    .line 52
    add-int/2addr p1, v2

    .line 53
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    .line 55
    const/16 v0, 0xa

    .line 57
    if-le p1, v0, :cond_41

    .line 59
    const-string p1, "RecyclerView"

    .line 61
    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_41
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    .line 68
    goto :goto_4e

    .line 69
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    const-string v0, "Scroll duration must be a positive number"

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1

    .line 77
    :cond_4c
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    .line 79
    :goto_4e
    return-void
.end method
