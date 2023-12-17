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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

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
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 7
    move-result p2

    .line 8
    const/4 p4, -0x1

    .line 9
    if-ne p2, p4, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 19
    move-result p2

    .line 20
    const/4 p3, 0x2

    .line 21
    if-ne p2, p3, :cond_18

    .line 23
    const/4 p2, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 p2, 0x0

    .line 26
    :goto_19
    if-eqz p2, :cond_45

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_37

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 36
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_37

    .line 42
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 44
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p2

    .line 48
    const p3, 0x7f0707f7

    .line 51
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    move-result p2

    .line 55
    goto :goto_41

    .line 56
    :cond_37
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 58
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 61
    move-result-object p2

    .line 62
    invoke-static {p2}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getCategoryMarginSide(Landroid/content/Context;)I

    .line 65
    move-result p2

    .line 66
    :goto_41
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 68
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 70
    :cond_45
    return-void
.end method
