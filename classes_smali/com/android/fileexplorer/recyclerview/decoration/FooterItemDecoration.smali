.class public Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FooterItemDecoration.java"


# instance fields
.field private mDecorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_c

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    const-string v0, "transient view should not have a parent"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method private calculateFooterOffset(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    if-ne p2, v0, :cond_47

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 23
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result p2

    .line 27
    const/high16 p3, 0x40000000  # 2.0f

    .line 29
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    move-result p2

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    move-result v1

    .line 39
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    move-result p3

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 45
    invoke-virtual {v1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 48
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    move-result p3

    .line 54
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    move-result v1

    .line 60
    invoke-virtual {p2, v0, v0, p3, v1}, Landroid/view/View;->layout(IIII)V

    .line 63
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    :cond_47
    return-void
.end method

.method private drawFooterDecor(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 8

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    move-result v3

    .line 23
    const/4 v4, -0x1

    .line 24
    if-eq v3, v4, :cond_1d

    .line 26
    sub-int/2addr v0, v2

    .line 27
    if-ne v3, v0, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v2, 0x0

    .line 31
    :goto_1e
    if-eqz v2, :cond_4d

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, v0

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 47
    move-result v2

    .line 48
    if-gt v1, v2, :cond_3d

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 53
    move-result p2

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 59
    move-result v0

    .line 60
    sub-int v0, p2, v0

    .line 62
    :cond_3d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    const/4 p2, 0x0

    .line 66
    int-to-float v0, v0

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    iget-object p2, p0, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->mDecorView:Landroid/view/View;

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    :cond_4d
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->calculateFooterOffset(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/decoration/FooterItemDecoration;->drawFooterDecor(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    return-void
.end method
