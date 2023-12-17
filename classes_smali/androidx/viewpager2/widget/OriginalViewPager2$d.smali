.class public final Landroidx/viewpager2/widget/OriginalViewPager2$d;
.super Ljava/lang/Object;
.source "OriginalViewPager2.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 7
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_10

    .line 12
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 14
    if-ne p1, v1, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "Pages must fill the whole ViewPager2 (use match_parent)"

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
.end method

.method public final onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
