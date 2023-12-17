.class Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "MoreCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 6
    iget-object p3, p3, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 14
    iget-object p3, p3, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 16
    invoke-virtual {p3, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_16

    .line 22
    goto :goto_26

    .line 23
    :cond_16
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    .line 25
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p2

    .line 29
    const p3, 0x7f070622

    .line 32
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    move-result p2

    .line 36
    float-to-int p2, p2

    .line 37
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    :goto_26
    return-void
.end method
