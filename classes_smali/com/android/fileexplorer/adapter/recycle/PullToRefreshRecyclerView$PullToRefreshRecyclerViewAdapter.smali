.class Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PullToRefreshRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PullToRefreshRecyclerViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object p0
.end method

.method private getFooterViewByType(I)Landroid/view/View;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isFooterType(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$600(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    add-int/lit16 p1, p1, -0x2af8

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/View;

    .line 23
    return-object p1
.end method

.method private getHeaderViewByType(I)Landroid/view/View;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeaderType(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    add-int/lit16 p1, p1, -0x2713

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/View;

    .line 23
    return-object p1
.end method

.method private isFooterType(I)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$800()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1a

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$800()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method private isHeaderType(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1c

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$700()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method


# virtual methods
.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object v0
.end method

.method public getFootersCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$600(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getHeadersCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItemCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2b

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    if-eqz v0, :cond_1f

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getFootersCount()I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    add-int/lit8 v1, v1, 0x2

    .line 31
    goto :goto_4d

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getFootersCount()I

    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    add-int/lit8 v1, v0, 0x2

    .line 43
    goto :goto_4d

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 46
    if-eqz v0, :cond_42

    .line 48
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getFootersCount()I

    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 62
    move-result v1

    .line 63
    add-int/2addr v1, v0

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_4d

    .line 67
    :cond_42
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    .line 70
    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getFootersCount()I

    .line 74
    move-result v1

    .line 75
    add-int/2addr v0, v1

    .line 76
    add-int/lit8 v1, v0, 0x1

    .line 78
    :goto_4d
    return v1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 11
    if-lt p1, v0, :cond_22

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    sub-int/2addr p1, v0

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 25
    move-result v0

    .line 26
    if-ge p1, v0, :cond_22

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 33
    move-result-wide v0

    .line 34
    return-wide v0

    .line 35
    :cond_22
    const-wide/16 v0, -0x1

    .line 37
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isRefreshHeader(I)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_b

    .line 9
    const/16 p1, 0x2710

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeader(I)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_20

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$700()Ljava/util/List;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Integer;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isFooter(I)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_47

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 41
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    move-result p1

    .line 49
    sub-int/2addr v0, p1

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 55
    move-result p1

    .line 56
    sub-int/2addr v0, p1

    .line 57
    invoke-static {}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$800()Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Integer;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_47
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isLoadMoreFooter(I)Z

    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_50

    .line 78
    const/16 p1, 0x2711

    .line 80
    return p1

    .line 81
    :cond_50
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 83
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 86
    move-result p1

    .line 87
    return p1
.end method

.method public isFooter(I)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lt p1, v1, :cond_20

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isLoadMoreFooter(I)Z

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_20

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 13
    invoke-static {v2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    add-int/2addr v2, v1

    .line 22
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 27
    move-result v3

    .line 28
    add-int/2addr v3, v2

    .line 29
    add-int/2addr v3, v0

    .line 30
    if-lt p1, v3, :cond_20

    .line 32
    move v0, v1

    .line 33
    :cond_20
    return v0
.end method

.method public isHeader(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_11

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 6
    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$400(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v0

    .line 15
    if-ge p1, v1, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return v0
.end method

.method public isLoadMoreFooter(I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$500(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_12

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getItemCount()I

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v0, v2

    .line 16
    if-ne p1, v0, :cond_12

    .line 18
    move v1, v2

    .line 19
    :cond_12
    return v1
.end method

.method public isRefreshHeader(I)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public isSpecialViewType(I)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeader(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isLoadMoreFooter(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1b

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isRefreshHeader(I)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1b

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isFooter(I)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    .line 29
    :goto_1c
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    if-eqz v1, :cond_1d

    .line 12
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 17
    move-result-object v1

    .line 18
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager$a;

    .line 20
    if-eqz v1, :cond_1d

    .line 22
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$1;

    .line 24
    invoke-direct {v1, p0, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 35
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isRefreshHeader(I)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isFooter(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isLoadMoreFooter(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2f

    .line 3
    :cond_19
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2f

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2f

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isRefreshHeader(I)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isFooter(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isLoadMoreFooter(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3b

    .line 9
    :cond_19
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3b

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_3b

    .line 12
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 13
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    goto :goto_3b

    .line 14
    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 4

    .line 1
    const/16 v0, 0x2710

    .line 3
    if-ne p2, v0, :cond_10

    .line 5
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;

    .line 7
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 9
    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$200(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;

    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;Landroid/view/View;)V

    .line 16
    return-object p1

    .line 17
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeaderType(I)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_20

    .line 23
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;

    .line 25
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getHeaderViewByType(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;Landroid/view/View;)V

    .line 32
    return-object p1

    .line 33
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isFooterType(I)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_30

    .line 39
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;

    .line 41
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->getFooterViewByType(I)Landroid/view/View;

    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;Landroid/view/View;)V

    .line 48
    return-object p1

    .line 49
    :cond_30
    const/16 v0, 0x2711

    .line 51
    if-ne p2, v0, :cond_40

    .line 53
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;

    .line 55
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->this$0:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    .line 57
    invoke-static {p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->access$900(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)Lcom/android/fileexplorer/adapter/recycle/RefreshFooterView;

    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter$SimpleViewHolder;-><init>(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;Landroid/view/View;)V

    .line 64
    return-object p1

    .line 65
    :cond_40
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 67
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$b0;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_32

    .line 12
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 14
    if-eqz v1, :cond_32

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isHeader(I)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2d

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isRefreshHeader(I)Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2d

    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->isLoadMoreFooter(I)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_32

    .line 46
    :cond_2d
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:Z

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 56
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 6
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 6
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 6
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView$PullToRefreshRecyclerViewAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 6
    return-void
.end method
