.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;
.source "FavoriteMultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FavoriteItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mFavoriteRemoveListener:Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;ILcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback;->mFavoriteRemoveListener:Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;

    .line 6
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0079

    .line 11
    if-ne v0, v1, :cond_1a

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback;->mFavoriteRemoveListener:Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;

    .line 15
    if-eqz p1, :cond_15

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 19
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FavoriteMultiCallback$OnFavRemoveListener;->onRemove(Ljava/util/List;)V

    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0e0002

    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    xor-int/2addr p1, v0

    .line 12
    const v1, 0x7f0a0079

    .line 15
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 18
    return v0
.end method
