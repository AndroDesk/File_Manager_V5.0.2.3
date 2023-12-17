.class Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "AppCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initItemDecoration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

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
    if-eqz p2, :cond_2c

    .line 28
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 30
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object p2

    .line 34
    const p3, 0x7f07023e

    .line 37
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result p2

    .line 41
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 43
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 45
    :cond_2c
    return-void
.end method
