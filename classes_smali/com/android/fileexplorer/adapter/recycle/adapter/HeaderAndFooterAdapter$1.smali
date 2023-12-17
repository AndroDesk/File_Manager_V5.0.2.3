.class Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;
.super Ljava/lang/Object;
.source "HeaderAndFooterAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$c;I)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    .line 3
    invoke-virtual {v0, p3}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getItemViewType(I)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->access$000(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v0, v2}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_18

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_18
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    .line 27
    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0, v2}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_29

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_29
    if-eqz p2, :cond_30

    .line 44
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_30
    const/4 p1, 0x1

    .line 50
    return p1
.end method
