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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object p3, p3, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    iget-object p3, p3, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-virtual {p3, p2}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->getItemViewType(I)I

    move-result p2

    if-nez p2, :cond_16

    goto :goto_26

    :cond_16
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/MoreCategoryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070622

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_26
    return-void
.end method
