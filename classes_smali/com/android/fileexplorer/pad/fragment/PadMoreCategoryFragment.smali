.class public Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;
.super Lcom/android/fileexplorer/fragment/MoreCategoryFragment;
.source "PadMoreCategoryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PadMoreCategoryFragment"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanCount()I
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/PadFragmentUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x7

    return v0

    :cond_12
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public initActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    return-void
.end method

.method public initActionBarView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initActionBarView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZ)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->mAdapter:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadMoreCategoryFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120520

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f11006f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    :cond_10
    return-void
.end method
