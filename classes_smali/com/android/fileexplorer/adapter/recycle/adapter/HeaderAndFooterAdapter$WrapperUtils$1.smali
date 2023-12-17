.class Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "HeaderAndFooterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;

.field public final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$c;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;->val$callback:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;->val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;->val$callback:Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$1;->val$spanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/HeaderAndFooterAdapter$WrapperUtils$SpanSizeCallback;->getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$c;I)I

    move-result p1

    return p1
.end method
