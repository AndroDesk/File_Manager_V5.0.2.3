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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 8

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, -0x1

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    return-void

    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->e:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    if-lt v3, v2, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->c:I

    if-lt v3, v2, :cond_44

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$a0;

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->a:I

    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->b:I

    invoke-virtual {p1, v4, v5, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->c(IILandroid/view/animation/Interpolator;I)V

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_41

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->f:Z

    goto :goto_4e

    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$x$a;->g:I

    :goto_4e
    return-void
.end method
