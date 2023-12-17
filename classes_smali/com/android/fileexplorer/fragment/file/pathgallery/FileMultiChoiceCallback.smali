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
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    iput p4, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 6
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 8
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 15
    iput-object p3, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 3
    return p0
.end method

.method private isAddFavorite()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 23
    if-nez v1, :cond_6

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    move-result v3

    .line 21
    sparse-switch v3, :sswitch_data_116

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :sswitch_1c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 31
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 39
    return v2

    .line 40
    :sswitch_27
    if-eqz v0, :cond_3c

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 44
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 56
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 58
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 64
    return v2

    .line 65
    :sswitch_40
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 75
    return v2

    .line 76
    :sswitch_4b
    if-eqz v0, :cond_5a

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 80
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 88
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 91
    :cond_5a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 94
    return v2

    .line 95
    :sswitch_5e
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 103
    return v2

    .line 104
    :sswitch_67
    if-eqz v0, :cond_7c

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 108
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 118
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 125
    :cond_7c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 128
    return v2

    .line 129
    :sswitch_80
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 132
    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 138
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 140
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 143
    move-result-object v3

    .line 144
    const v4, 0x7f11029a

    .line 147
    const v5, 0x7f11030c

    .line 150
    iget p1, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 152
    const/16 p2, 0xc

    .line 154
    if-eq p1, p2, :cond_9d

    .line 156
    move v6, v2

    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move v6, v1

    .line 159
    :goto_9e
    const/4 p2, 0x6

    .line 160
    if-eq p1, p2, :cond_a3

    .line 162
    move v7, v2

    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    move v7, v1

    .line 165
    :goto_a4
    if-eq p1, p2, :cond_a8

    .line 167
    move v8, v2

    .line 168
    goto :goto_a9

    .line 169
    :cond_a8
    move v8, v1

    .line 170
    :goto_a9
    const/4 v9, 0x0

    .line 171
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 174
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 177
    return v2

    .line 178
    :sswitch_b1
    if-eqz v0, :cond_c6

    .line 180
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 182
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 190
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 192
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 199
    :cond_c6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 202
    return v2

    .line 203
    :sswitch_ca
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 205
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 213
    return v2

    .line 214
    :sswitch_d5
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 216
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 224
    return v2

    .line 225
    :sswitch_e0
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 227
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 229
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 232
    move-result-object v0

    .line 233
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    .line 236
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 239
    return v2

    .line 240
    :sswitch_ef
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 243
    move-result-object p1

    .line 244
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 252
    new-instance p1, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback$1;

    .line 254
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;)V

    .line 257
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    .line 260
    return v2

    .line 261
    :sswitch_104
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 263
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 265
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 267
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->compress(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 277
    return v2

    .line 278
    nop

    .line 279
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
    const v1, 0x7f0e000b

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
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_f

    .line 14
    move v3, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v3, v1

    .line 17
    :goto_10
    if-ne v0, v2, :cond_20

    .line 19
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 29
    if-nez v4, :cond_20

    .line 31
    move v4, v2

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v4, v1

    .line 34
    :goto_21
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v5

    .line 40
    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_39

    .line 46
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 52
    iget-boolean v6, v6, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 54
    if-eqz v6, :cond_27

    .line 56
    move v5, v2

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v5, v1

    .line 59
    :goto_3a
    iget-object v6, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 61
    invoke-virtual {v6}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getCurrentPath()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 68
    move-result-object v6

    .line 69
    if-eqz v6, :cond_52

    .line 71
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_52

    .line 81
    move v7, v2

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move v7, v1

    .line 84
    :goto_53
    if-eqz v6, :cond_61

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v8, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_61

    .line 96
    move v6, v2

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v6, v1

    .line 99
    :goto_62
    if-eqz v0, :cond_73

    .line 101
    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    .line 109
    iget v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 111
    const/4 v9, 0x3

    .line 112
    if-ne v8, v9, :cond_73

    .line 114
    move v8, v2

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v8, v1

    .line 117
    :goto_74
    if-eqz v0, :cond_85

    .line 119
    iget-object v9, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    .line 127
    iget v9, v9, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 129
    const/4 v10, 0x4

    .line 130
    if-ne v9, v10, :cond_85

    .line 132
    move v9, v2

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move v9, v1

    .line 135
    :goto_86
    if-nez v7, :cond_a2

    .line 137
    if-eqz v4, :cond_a2

    .line 139
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    .line 142
    move-result v10

    .line 143
    if-eqz v10, :cond_a2

    .line 145
    iget-object v10, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Lcom/android/fileexplorer/model/FileInfo;

    .line 153
    iget-object v10, v10, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 155
    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_a2

    .line 161
    move v10, v2

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v10, v1

    .line 164
    :goto_a3
    const v11, 0x7f0a0075

    .line 167
    if-nez v3, :cond_b4

    .line 169
    if-nez v8, :cond_b4

    .line 171
    if-nez v9, :cond_b4

    .line 173
    if-nez v5, :cond_b4

    .line 175
    if-nez v7, :cond_b4

    .line 177
    if-nez v6, :cond_b4

    .line 179
    move v12, v2

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    move v12, v1

    .line 182
    :goto_b5
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 185
    const v11, 0x7f0a006a

    .line 188
    xor-int/lit8 v12, v3, 0x1

    .line 190
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 193
    const v11, 0x7f0a0054

    .line 196
    xor-int/lit8 v12, v3, 0x1

    .line 198
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 201
    const v11, 0x7f0a005a

    .line 204
    xor-int/lit8 v12, v3, 0x1

    .line 206
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 209
    const v11, 0x7f0a006e

    .line 212
    if-nez v3, :cond_e5

    .line 214
    if-nez v7, :cond_e5

    .line 216
    if-nez v8, :cond_e5

    .line 218
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 221
    move-result-object v12

    .line 222
    invoke-virtual {v12}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 225
    move-result v12

    .line 226
    if-eqz v12, :cond_e5

    .line 228
    move v12, v2

    .line 229
    goto :goto_e6

    .line 230
    :cond_e5
    move v12, v1

    .line 231
    :goto_e6
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 234
    const v11, 0x7f0a005e

    .line 237
    if-nez v3, :cond_fc

    .line 239
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->isAddFavorite()Z

    .line 242
    move-result v12

    .line 243
    if-eqz v12, :cond_fc

    .line 245
    if-nez v8, :cond_fc

    .line 247
    if-nez v7, :cond_fc

    .line 249
    if-nez v9, :cond_fc

    .line 251
    move v12, v2

    .line 252
    goto :goto_fd

    .line 253
    :cond_fc
    move v12, v1

    .line 254
    :goto_fd
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 257
    const v11, 0x7f0a0079

    .line 260
    if-nez v3, :cond_113

    .line 262
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->isAddFavorite()Z

    .line 265
    move-result v12

    .line 266
    if-nez v12, :cond_113

    .line 268
    if-nez v8, :cond_113

    .line 270
    if-nez v7, :cond_113

    .line 272
    if-nez v9, :cond_113

    .line 274
    move v12, v2

    .line 275
    goto :goto_114

    .line 276
    :cond_113
    move v12, v1

    .line 277
    :goto_114
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 280
    const v11, 0x7f0a0072

    .line 283
    if-ne v0, v2, :cond_120

    .line 285
    if-nez v9, :cond_120

    .line 287
    move v12, v2

    .line 288
    goto :goto_121

    .line 289
    :cond_120
    move v12, v1

    .line 290
    :goto_121
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 293
    const v11, 0x7f0a0050

    .line 296
    if-nez v3, :cond_13d

    .line 298
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_13d

    .line 308
    if-nez v8, :cond_13d

    .line 310
    if-nez v9, :cond_13d

    .line 312
    iget v3, p0, Lcom/android/fileexplorer/fragment/file/pathgallery/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 314
    if-eq v3, v2, :cond_13d

    .line 316
    move v3, v2

    .line 317
    goto :goto_13e

    .line 318
    :cond_13d
    move v3, v1

    .line 319
    :goto_13e
    invoke-virtual {p0, p2, v11, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 322
    const v3, 0x7f0a006d

    .line 325
    if-eqz v4, :cond_14c

    .line 327
    if-nez v7, :cond_14c

    .line 329
    if-nez v6, :cond_14c

    .line 331
    move v4, v2

    .line 332
    goto :goto_14d

    .line 333
    :cond_14c
    move v4, v1

    .line 334
    :goto_14d
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 337
    const v3, 0x7f0a0077

    .line 340
    invoke-virtual {p0, p2, v3, v10}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 343
    const v3, 0x7f0a0061

    .line 346
    if-ne v0, v2, :cond_15d

    .line 348
    move v4, v2

    .line 349
    goto :goto_15e

    .line 350
    :cond_15d
    move v4, v1

    .line 351
    :goto_15e
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 354
    const v3, 0x7f0a0055

    .line 357
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_16f

    .line 363
    if-ne v0, v2, :cond_16f

    .line 365
    if-nez v5, :cond_16f

    .line 367
    move v1, v2

    .line 368
    :cond_16f
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 371
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 374
    move-result p1

    .line 375
    return p1
.end method
