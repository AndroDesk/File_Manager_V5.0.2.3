.class public abstract Landroidx/recyclerview/widget/p;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public b:I

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/p;->b:I

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/p;->c:Landroid/graphics/Rect;

    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/p;
    .registers 3

    .line 1
    if-eqz p1, :cond_13

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_b

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/o;

    .line 8
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/o;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p1, "invalid orientation"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 20
    :cond_13
    new-instance p1, Landroidx/recyclerview/widget/n;

    .line 22
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/n;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    return-object p1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public final m()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/p;->b:I

    .line 3
    const/high16 v1, -0x80000000

    .line 5
    if-ne v1, v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->l()I

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Landroidx/recyclerview/widget/p;->b:I

    .line 15
    sub-int/2addr v0, v1

    .line 16
    :goto_f
    return v0
.end method

.method public abstract n(Landroid/view/View;)I
.end method

.method public abstract o(Landroid/view/View;)I
.end method

.method public abstract p(I)V
.end method
