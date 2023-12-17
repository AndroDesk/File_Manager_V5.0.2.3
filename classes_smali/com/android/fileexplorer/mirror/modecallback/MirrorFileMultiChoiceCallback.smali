.class public Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;
.source "MirrorFileMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMultiChoiceCallback"


# instance fields
.field private mCurrentDeviceIndex:I

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    iput p5, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 6
    iput-object p4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 10
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->lambda$onMenuItemClick$0()V

    return-void
.end method

.method private isAddFavorite()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

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

.method private synthetic lambda$onMenuItemClick$0()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 5
    return-void
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedItems()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isSelectedMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onMenuItemClick(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    move v0, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v2

    .line 14
    :goto_d
    sparse-switch p1, :sswitch_data_c0

    .line 17
    goto/16 :goto_be

    .line 19
    :sswitch_12
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 33
    if-eqz v0, :cond_23

    .line 35
    goto :goto_2d

    .line 36
    :cond_23
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 38
    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 45
    move-result-object p2

    .line 46
    :goto_2d
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasOuterPasteFile()Z

    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x3

    .line 51
    if-eqz v0, :cond_41

    .line 53
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 59
    sget v2, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    .line 61
    invoke-static {p1, p2, v0, v2, v1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 64
    goto/16 :goto_be

    .line 66
    :cond_41
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasInnerPasteFile()Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_be

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 74
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    .line 76
    invoke-static {p2, p1, v0, v1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 79
    goto/16 :goto_be

    .line 81
    :sswitch_50
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 83
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 88
    goto :goto_be

    .line 89
    :sswitch_58
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 91
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 93
    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickForSave(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 96
    goto :goto_be

    .line 97
    :sswitch_60
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 99
    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 101
    if-eqz v0, :cond_be

    .line 103
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 105
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 113
    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;->onRename(Lcom/android/fileexplorer/model/FileInfo;I)V

    .line 116
    goto :goto_be

    .line 117
    :sswitch_74
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 125
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 127
    if-eqz p2, :cond_86

    .line 129
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 131
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 134
    goto :goto_be

    .line 135
    :cond_86
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 137
    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 140
    goto :goto_be

    .line 141
    :sswitch_8c
    if-eqz v0, :cond_be

    .line 143
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 145
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 153
    const-string v0, ""

    .line 155
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 158
    goto :goto_be

    .line 159
    :sswitch_9e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 161
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 166
    goto :goto_be

    .line 167
    :sswitch_a6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 169
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Landroidx/activity/b;

    .line 173
    const/16 v1, 0xc

    .line 175
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 178
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 181
    goto :goto_be

    .line 182
    :sswitch_b5
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 185
    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z

    .line 191
    :cond_be
    :goto_be
    return-void

    .line 192
    nop

    .line 193
    :sswitch_data_c0
    .sparse-switch
        0x7f0a0054 -> :sswitch_b5
        0x7f0a005a -> :sswitch_a6
        0x7f0a005e -> :sswitch_9e
        0x7f0a0061 -> :sswitch_8c
        0x7f0a006b -> :sswitch_74
        0x7f0a0072 -> :sswitch_60
        0x7f0a0076 -> :sswitch_58
        0x7f0a0079 -> :sswitch_50
        0x7f0a0307 -> :sswitch_12
    .end sparse-switch
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;->isAddFavorite()Z

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-le v1, v2, :cond_13

    .line 18
    move v1, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v3

    .line 21
    :goto_14
    if-eqz v1, :cond_28

    .line 23
    const v4, 0x7f0a006b

    .line 26
    invoke-virtual {p1, v4, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 29
    const v4, 0x7f0a0061

    .line 32
    invoke-virtual {p1, v4, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 35
    const v4, 0x7f0a0072

    .line 38
    invoke-virtual {p1, v4, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 41
    :cond_28
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_38

    .line 49
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 51
    invoke-static {v4}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3e

    .line 57
    :cond_38
    const v4, 0x7f0a0076

    .line 60
    invoke-virtual {p1, v4, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 63
    :cond_3e
    if-eqz v0, :cond_47

    .line 65
    const v0, 0x7f0a0079

    .line 68
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 71
    goto :goto_4d

    .line 72
    :cond_47
    const v0, 0x7f0a005e

    .line 75
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 78
    :goto_4d
    const v0, 0x7f0a006a

    .line 81
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 84
    const v0, 0x7f0a0075

    .line 87
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 98
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->hasPasteFile()Z

    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_6e

    .line 104
    if-nez v1, :cond_6e

    .line 106
    iget-boolean v0, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 108
    if-eqz v0, :cond_6e

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move v2, v3

    .line 112
    :goto_6f
    const v0, 0x7f0a0307

    .line 115
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 118
    return-void
.end method
