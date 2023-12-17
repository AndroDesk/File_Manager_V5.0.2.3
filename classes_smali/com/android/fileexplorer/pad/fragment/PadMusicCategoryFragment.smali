.class public Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.source "PadMusicCategoryFragment.java"


# static fields
.field private static final PAGE_COUNT:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "PadMusicCategoryFragment"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x3e8

    return v0
.end method

.method public initItemViewDelegate()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemViewDelegate()V

    .line 4
    sget-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 6
    if-eqz v0, :cond_10

    .line 8
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 12
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mChildAdDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 17
    :cond_10
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_23

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_23

    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment$1;

    .line 30
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->onUserVisible(Z)V

    .line 4
    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 6
    if-eqz p1, :cond_10

    .line 8
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 11
    move-result-object p1

    .line 12
    const-string v0, "1.301.1.9"

    .line 14
    invoke-virtual {p1, v0, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    .line 17
    :cond_10
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
    const v1, 0x7f110070

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    .line 17
    :cond_10
    return-void
.end method
