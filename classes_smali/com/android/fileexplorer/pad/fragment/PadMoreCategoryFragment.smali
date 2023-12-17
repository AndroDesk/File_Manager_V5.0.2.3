.class public Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;
.super Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
.source "PadMoreCategoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadMoreCategoryFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getSpanCount()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x7

    .line 18
    return v0

    .line 19
    :cond_12
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public initActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 13
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 16
    return-void
.end method

.method public initActionBarView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initActionBarView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    .line 10
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    .line 6
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const p1, 0x7f120520

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 10
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f11006f

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
    return-void
.end method
