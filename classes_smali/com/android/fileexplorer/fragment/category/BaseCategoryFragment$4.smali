.class Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "BaseCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_b

    return-void

    :cond_b
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    if-eqz p2, :cond_45

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    move-result p2

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0707f7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_41

    :cond_37
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getCategoryMarginSide(Landroid/content/Context;)I

    move-result p2

    :goto_41
    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_45
    return-void
.end method
