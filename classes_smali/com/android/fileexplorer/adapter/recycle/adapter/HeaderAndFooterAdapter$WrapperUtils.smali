.class Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;
.super Ljava/lang/Object;
.source "HeaderAndFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    move-result-object p0

    .line 8
    instance-of p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    if-eqz p1, :cond_20

    .line 12
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;

    .line 20
    invoke-direct {v0, p2, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 33
    :cond_20
    return-void
.end method

.method public static setFullSpan(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 2

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_11

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 11
    if-eqz v0, :cond_11

    .line 13
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 18
    :cond_11
    return-void
.end method
