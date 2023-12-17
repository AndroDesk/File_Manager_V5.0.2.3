.class public abstract Lcom/android/fileexplorer/fragment/AbsActionBarFragment;
.super Lcom/android/fileexplorer/FoldScreenFragment;
.source "AbsActionBarFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsActionBarFragment"


# instance fields
.field public mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

.field public mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

.field public mPadPopupMenuWindow:Lcom/android/fileexplorer/view/PadPopupMenuWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/FoldScreenFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onNewFolder()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const v1, 0x7f0a02dc

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    .line 11
    :cond_a
    return-void
.end method

.method public onSearch(I)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/util/StatUtil;->getStatParamsByPageType(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "click_search"

    .line 7
    const-string v1, "name"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    .line 15
    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onSortCallback()V

    .line 11
    :cond_a
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortOrderChanged(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 6
    if-eqz p1, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onSortCallback()V

    .line 11
    :cond_a
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewModeChanged(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->setDisplayModeIcon()V

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    .line 14
    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    .line 11
    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;II)V
    .registers 4

    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 4
    return-void
.end method

.method public updatePreference()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 22
    return-void
.end method
