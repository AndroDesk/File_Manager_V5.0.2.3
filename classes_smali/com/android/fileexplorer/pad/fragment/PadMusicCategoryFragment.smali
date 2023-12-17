.class public Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;
.super Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;
.source "PadMusicCategoryFragment.java"


# static fields
.field private static final PAGE_COUNT:I

.field public static final TAG:Ljava/lang/String; = "PadMusicCategoryFragment"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92e7e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;->PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;-><init>()V

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x3e8

    return v0
.end method

.method public initItemViewDelegate()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemViewDelegate()V

    sget-boolean v0, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildAdDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mChildAdDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    :cond_10
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBar;->getStartView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment$1;-><init>(Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->onUserVisible(Z)V

    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object p1

    const-string v0, "1.301.1.9"

    invoke-virtual {p1, v0, p0}, Lcom/fileexplorer/advert/AdManagerController;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    :cond_10
    return-void
.end method

.method public setActionBarTitle()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f110070

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(I)V

    :cond_10
    return-void
.end method
