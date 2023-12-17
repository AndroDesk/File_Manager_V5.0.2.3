.class public Lcom/android/fileexplorer/fragment/category/WidgetDocCategorySubFragment;
.super Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;
.source "WidgetDocCategorySubFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00af

    return v0
.end method

.method public getOffsetYParent()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a02d8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public initItemDecoration(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategorySubFragment;->initItemDecoration(I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz p1, :cond_16

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetYParent(Landroid/view/View;)V

    .line 23
    :cond_16
    return-void
.end method
