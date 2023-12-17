.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;
.source "CategoryMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryMultiChoiceCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    return-void
.end method

.method private isAddFavorite()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->convert2RealCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public encrypt()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPrepareActionMode: checkedCount = "

    const-string v2, "CategoryMultiChoiceCallback"

    invoke-static {v1, v0, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    if-ne v0, v2, :cond_27

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v4, :cond_27

    move v4, v2

    goto :goto_28

    :cond_27
    move v4, v1

    :goto_28
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/CategoryMultiChoiceCallback;->isAddFavorite()Z

    move-result v5

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    move-result v6

    if-eqz v6, :cond_46

    if-eqz v4, :cond_46

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    move v6, v2

    goto :goto_47

    :cond_46
    move v6, v1

    :goto_47
    const v7, 0x7f0a0075

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a006a

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a005a

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a0054

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a006e

    if-nez v3, :cond_78

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v8

    if-eqz v8, :cond_78

    move v8, v2

    goto :goto_79

    :cond_78
    move v8, v1

    :goto_79
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a005e

    if-nez v3, :cond_85

    if-eqz v5, :cond_85

    move v8, v2

    goto :goto_86

    :cond_85
    move v8, v1

    :goto_86
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v7, 0x7f0a0079

    if-nez v3, :cond_92

    if-nez v5, :cond_92

    move v3, v2

    goto :goto_93

    :cond_92
    move v3, v1

    :goto_93
    invoke-virtual {p0, p2, v7, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0072

    if-ne v0, v2, :cond_9d

    move v5, v2

    goto :goto_9e

    :cond_9d
    move v5, v1

    :goto_9e
    invoke-virtual {p0, p2, v3, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0050

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a006d

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0077

    invoke-virtual {p0, p2, v3, v6}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0061

    if-ne v0, v2, :cond_b9

    move v1, v2

    :cond_b9
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
