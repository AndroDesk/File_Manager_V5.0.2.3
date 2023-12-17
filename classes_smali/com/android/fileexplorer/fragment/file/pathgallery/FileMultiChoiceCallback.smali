.class public Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.source "FileMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMultiChoiceCallback"


# instance fields
.field private mCurrentDeviceIndex:I

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput p4, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iput-object p3, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    return p0
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
.method public getCheckedFileInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_116

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_1c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_27
    if-eqz v0, :cond_3c

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_40
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_4b
    if-eqz v0, :cond_5a

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_5a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_5e
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_67
    if-eqz v0, :cond_7c

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_7c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_80
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f11029a

    const v5, 0x7f11030c

    iget p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    const/16 p2, 0xc

    if-eq p1, p2, :cond_9d

    move v6, v2

    goto :goto_9e

    :cond_9d
    move v6, v1

    :goto_9e
    const/4 p2, 0x6

    if-eq p1, p2, :cond_a3

    move v7, v2

    goto :goto_a4

    :cond_a3
    move v7, v1

    :goto_a4
    if-eq p1, p2, :cond_a8

    move v8, v2

    goto :goto_a9

    :cond_a8
    move v8, v1

    :goto_a9
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_b1
    if-eqz v0, :cond_c6

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_c6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_ca
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_d5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_e0
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_ef
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    new-instance p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    return v2

    :sswitch_104
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->compress(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    nop

    :sswitch_data_116
    .sparse-switch
        0x7f0a0050 -> :sswitch_104
        0x7f0a0054 -> :sswitch_ef
        0x7f0a0055 -> :sswitch_e0
        0x7f0a005a -> :sswitch_d5
        0x7f0a005e -> :sswitch_ca
        0x7f0a0061 -> :sswitch_b1
        0x7f0a006a -> :sswitch_80
        0x7f0a006d -> :sswitch_67
        0x7f0a006e -> :sswitch_5e
        0x7f0a0072 -> :sswitch_4b
        0x7f0a0075 -> :sswitch_40
        0x7f0a0077 -> :sswitch_27
        0x7f0a0079 -> :sswitch_1c
    .end sparse-switch
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
    .registers 16

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    if-ne v0, v2, :cond_20

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v6, v6, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_27

    move v5, v2

    goto :goto_3a

    :cond_39
    move v5, v1

    :goto_3a
    iget-object v6, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {v6}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v6

    if-eqz v6, :cond_52

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v7

    if-eqz v7, :cond_52

    move v7, v2

    goto :goto_53

    :cond_52
    move v7, v1

    :goto_53
    if-eqz v6, :cond_61

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v6

    if-eqz v6, :cond_61

    move v6, v2

    goto :goto_62

    :cond_61
    move v6, v1

    :goto_62
    if-eqz v0, :cond_73

    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    iget v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_73

    move v8, v2

    goto :goto_74

    :cond_73
    move v8, v1

    :goto_74
    if-eqz v0, :cond_85

    iget-object v9, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    iget v9, v9, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_85

    move v9, v2

    goto :goto_86

    :cond_85
    move v9, v1

    :goto_86
    if-nez v7, :cond_a2

    if-eqz v4, :cond_a2

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    move-result v10

    if-eqz v10, :cond_a2

    iget-object v10, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v10, v10, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a2

    move v10, v2

    goto :goto_a3

    :cond_a2
    move v10, v1

    :goto_a3
    const v11, 0x7f0a0075

    if-nez v3, :cond_b4

    if-nez v8, :cond_b4

    if-nez v9, :cond_b4

    if-nez v5, :cond_b4

    if-nez v7, :cond_b4

    if-nez v6, :cond_b4

    move v12, v2

    goto :goto_b5

    :cond_b4
    move v12, v1

    :goto_b5
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a006a

    xor-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0054

    xor-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a005a

    xor-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a006e

    if-nez v3, :cond_e5

    if-nez v7, :cond_e5

    if-nez v8, :cond_e5

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v12

    if-eqz v12, :cond_e5

    move v12, v2

    goto :goto_e6

    :cond_e5
    move v12, v1

    :goto_e6
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a005e

    if-nez v3, :cond_fc

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->isAddFavorite()Z

    move-result v12

    if-eqz v12, :cond_fc

    if-nez v8, :cond_fc

    if-nez v7, :cond_fc

    if-nez v9, :cond_fc

    move v12, v2

    goto :goto_fd

    :cond_fc
    move v12, v1

    :goto_fd
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0079

    if-nez v3, :cond_113

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->isAddFavorite()Z

    move-result v12

    if-nez v12, :cond_113

    if-nez v8, :cond_113

    if-nez v7, :cond_113

    if-nez v9, :cond_113

    move v12, v2

    goto :goto_114

    :cond_113
    move v12, v1

    :goto_114
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0072

    if-ne v0, v2, :cond_120

    if-nez v9, :cond_120

    move v12, v2

    goto :goto_121

    :cond_120
    move v12, v1

    :goto_121
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0050

    if-nez v3, :cond_13d

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    move-result v3

    if-nez v3, :cond_13d

    if-nez v8, :cond_13d

    if-nez v9, :cond_13d

    iget v3, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    if-eq v3, v2, :cond_13d

    move v3, v2

    goto :goto_13e

    :cond_13d
    move v3, v1

    :goto_13e
    invoke-virtual {p0, p2, v11, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a006d

    if-eqz v4, :cond_14c

    if-nez v7, :cond_14c

    if-nez v6, :cond_14c

    move v4, v2

    goto :goto_14d

    :cond_14c
    move v4, v1

    :goto_14d
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0077

    invoke-virtual {p0, p2, v3, v10}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0061

    if-ne v0, v2, :cond_15d

    move v4, v2

    goto :goto_15e

    :cond_15d
    move v4, v1

    :goto_15e
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0055

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v4

    if-eqz v4, :cond_16f

    if-ne v0, v2, :cond_16f

    if-nez v5, :cond_16f

    move v1, v2

    :cond_16f
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
