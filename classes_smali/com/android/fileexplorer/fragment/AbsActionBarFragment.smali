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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/FoldScreenFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewFolder()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    if-eqz v0, :cond_a

    const v1, 0x7f0a02dc

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    :cond_a
    return-void
.end method

.method public onSearch(I)V
    .registers 4

    invoke-static {p1}, Lcom/android/fileexplorer/util/StatUtil;->getStatParamsByPageType(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "click_search"

    const-string v1, "name"

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->navigator2SearchFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onShowSortMenu(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onSortCallback()V

    :cond_a
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onSortOrderChanged(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onSortCallback()V

    :cond_a
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onViewModeChanged(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->setDisplayModeIcon()V

    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;)V
    .registers 3

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V

    return-void
.end method

.method public onViewTypeChange(Landroid/widget/ImageView;II)V
    .registers 4

    return-void
.end method

.method public setDisplayModeIcon()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    return-void
.end method

.method public updatePreference()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCurrentCategoryKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    return-void
.end method
