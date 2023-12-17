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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$c;I)I
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    invoke-virtual {v0, p3}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->access$000(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_18
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;

    invoke-static {v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;->access$100(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter;)Landroidx/collection/g;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/collection/g;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_29
    if-eqz p2, :cond_30

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_30
    const/4 p1, 0x1

    return p1
.end method
