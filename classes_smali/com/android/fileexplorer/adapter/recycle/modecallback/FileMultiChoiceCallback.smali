.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.source "FileMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMultiChoiceCallback"


# instance fields
.field private mCurrentDeviceIndex:I

.field private mFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    iput p4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 6
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 8
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 15
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->lambda$onActionItemClicked$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 3
    return p0
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private isAddFavorite()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

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

.method private static synthetic lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onActionItemClicked$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/util/SettingsUtils;->setSkipWidgetTips(Ljava/lang/Boolean;)V

    .line 14
    :cond_d
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 20
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 23
    move-result-object p2

    .line 24
    invoke-static {p1, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    .line 27
    return-void
.end method

.method private tryAddWidget(Landroid/view/ActionMode;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_f

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddWidget(Landroid/content/Context;Ljava/util/List;)V

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 19
    return-void
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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_1a

    .line 25
    move v0, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v1

    .line 28
    :goto_1b
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2e

    .line 42
    const-string v4, "手机tab页"

    .line 44
    invoke-static {v4, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 50
    move-result v3

    .line 51
    sparse-switch v3, :sswitch_data_1c8

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :sswitch_3a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 61
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 69
    return v2

    .line 70
    :sswitch_45
    if-eqz v0, :cond_5a

    .line 72
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 74
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 77
    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 86
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 88
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    .line 91
    :cond_5a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 94
    return v2

    .line 95
    :sswitch_5e
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 97
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 105
    return v2

    .line 106
    :sswitch_69
    if-eqz v0, :cond_78

    .line 108
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 110
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 118
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 121
    :cond_78
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 124
    return v2

    .line 125
    :sswitch_7c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 133
    return v2

    .line 134
    :sswitch_85
    if-eqz v0, :cond_9a

    .line 136
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 138
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object p2

    .line 144
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 146
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 148
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 155
    :cond_9a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 158
    return v2

    .line 159
    :sswitch_9e
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 162
    move-result-object p2

    .line 163
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 168
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 170
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 173
    move-result-object v3

    .line 174
    const v4, 0x7f11029a

    .line 177
    const v5, 0x7f11030c

    .line 180
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 182
    const/16 v0, 0xc

    .line 184
    if-eq p2, v0, :cond_bb

    .line 186
    move v6, v2

    .line 187
    goto :goto_bc

    .line 188
    :cond_bb
    move v6, v1

    .line 189
    :goto_bc
    const/4 v0, 0x6

    .line 190
    if-eq p2, v0, :cond_c1

    .line 192
    move v7, v2

    .line 193
    goto :goto_c2

    .line 194
    :cond_c1
    move v7, v1

    .line 195
    :goto_c2
    if-eq p2, v0, :cond_c6

    .line 197
    move v8, v2

    .line 198
    goto :goto_c7

    .line 199
    :cond_c6
    move v8, v1

    .line 200
    :goto_c7
    const/4 v9, 0x0

    .line 201
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 204
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 207
    return v2

    .line 208
    :sswitch_cf
    if-eqz v0, :cond_e4

    .line 210
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 212
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    move-result-object p2

    .line 218
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 220
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 222
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 229
    :cond_e4
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 232
    return v2

    .line 233
    :sswitch_e8
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 235
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 243
    return v2

    .line 244
    :sswitch_f3
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 246
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    .line 251
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 254
    return v2

    .line 255
    :sswitch_fe
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 257
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 259
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 262
    move-result-object v0

    .line 263
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    .line 266
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 269
    return v2

    .line 270
    :sswitch_10d
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 273
    move-result-object p2

    .line 274
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 279
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 282
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;

    .line 284
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)V

    .line 287
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    .line 290
    return v2

    .line 291
    :sswitch_122
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 293
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 295
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 297
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->compress(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 307
    return v2

    .line 308
    :sswitch_133
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 310
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 313
    move-result-object p2

    .line 314
    invoke-static {p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    .line 317
    move-result p2

    .line 318
    if-nez p2, :cond_147

    .line 320
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 323
    move-result-object p2

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->tryAddWidget(Landroid/view/ActionMode;Ljava/util/List;)V

    .line 327
    return v2

    .line 328
    :cond_147
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 331
    move-result-object p2

    .line 332
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 335
    move-result p2

    .line 336
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainDataSize()I

    .line 339
    move-result v0

    .line 340
    add-int/2addr v0, p2

    .line 341
    const/4 p2, 0x4

    .line 342
    if-le v0, p2, :cond_1b6

    .line 344
    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isToSkipWidgetTip()Z

    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_1b6

    .line 350
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 352
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 354
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 357
    move-result-object v3

    .line 358
    invoke-direct {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    const v3, 0x7f110444

    .line 364
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 371
    move-result-object v0

    .line 372
    const v3, 0x7f110445

    .line 375
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 378
    move-result-object v3

    .line 379
    new-array v4, v2, [Ljava/lang/Object;

    .line 381
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    move-result-object p2

    .line 385
    aput-object p2, v4, v1

    .line 387
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 390
    move-result-object p2

    .line 391
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 394
    move-result-object p2

    .line 395
    const v0, 0x7f110121

    .line 398
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {p2, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 405
    move-result-object p2

    .line 406
    const v0, 0x7f110050

    .line 409
    new-instance v1, Lcom/android/cloud/fragment/c;

    .line 411
    invoke-direct {v1, v2}, Lcom/android/cloud/fragment/c;-><init>(I)V

    .line 414
    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 417
    move-result-object p2

    .line 418
    const v0, 0x7f1100eb

    .line 421
    new-instance v1, Lcom/android/cloud/fragment/b;

    .line 423
    const/4 v3, 0x2

    .line 424
    invoke-direct {v1, p0, v3}, Lcom/android/cloud/fragment/b;-><init>(Ljava/lang/Object;I)V

    .line 427
    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 430
    move-result-object p2

    .line 431
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 434
    move-result-object p2

    .line 435
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 438
    goto :goto_1c3

    .line 439
    :cond_1b6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 442
    move-result-object p2

    .line 443
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 445
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 448
    move-result-object v0

    .line 449
    invoke-static {p2, v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    .line 452
    :goto_1c3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 455
    return v2

    .line 456
    nop

    .line 457
    :sswitch_data_1c8
    .sparse-switch
        0x7f0a0039 -> :sswitch_133
        0x7f0a0050 -> :sswitch_122
        0x7f0a0054 -> :sswitch_10d
        0x7f0a0055 -> :sswitch_fe
        0x7f0a005a -> :sswitch_f3
        0x7f0a005e -> :sswitch_e8
        0x7f0a0061 -> :sswitch_cf
        0x7f0a006a -> :sswitch_9e
        0x7f0a006d -> :sswitch_85
        0x7f0a006e -> :sswitch_7c
        0x7f0a0072 -> :sswitch_69
        0x7f0a0075 -> :sswitch_5e
        0x7f0a0077 -> :sswitch_45
        0x7f0a0079 -> :sswitch_3a
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
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v0, :cond_1a

    .line 25
    move v3, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v3, v1

    .line 28
    :goto_1b
    if-ne v0, v2, :cond_2b

    .line 30
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 40
    if-nez v4, :cond_2b

    .line 42
    move v4, v2

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v4, v1

    .line 45
    :goto_2c
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v5

    .line 51
    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_44

    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 63
    iget-boolean v6, v6, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 65
    if-eqz v6, :cond_32

    .line 67
    move v5, v2

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move v5, v1

    .line 70
    :goto_45
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 72
    invoke-virtual {v6}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 79
    move-result-object v6

    .line 80
    if-eqz v6, :cond_5d

    .line 82
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_5d

    .line 92
    move v7, v2

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move v7, v1

    .line 95
    :goto_5e
    if-eqz v6, :cond_6c

    .line 97
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_6c

    .line 107
    move v6, v2

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move v6, v1

    .line 110
    :goto_6d
    if-eqz v0, :cond_7e

    .line 112
    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    .line 120
    iget v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 122
    const/4 v9, 0x3

    .line 123
    if-ne v8, v9, :cond_7e

    .line 125
    move v8, v2

    .line 126
    goto :goto_7f

    .line 127
    :cond_7e
    move v8, v1

    .line 128
    :goto_7f
    if-eqz v0, :cond_90

    .line 130
    iget-object v9, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    .line 138
    iget v9, v9, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 140
    const/4 v10, 0x4

    .line 141
    if-ne v9, v10, :cond_90

    .line 143
    move v9, v2

    .line 144
    goto :goto_91

    .line 145
    :cond_90
    move v9, v1

    .line 146
    :goto_91
    if-nez v7, :cond_ad

    .line 148
    if-eqz v4, :cond_ad

    .line 150
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_ad

    .line 156
    iget-object v10, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v10

    .line 162
    check-cast v10, Lcom/android/fileexplorer/model/FileInfo;

    .line 164
    iget-object v10, v10, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 166
    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_ad

    .line 172
    move v10, v2

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move v10, v1

    .line 175
    :goto_ae
    const v11, 0x7f0a0075

    .line 178
    if-nez v3, :cond_bf

    .line 180
    if-nez v8, :cond_bf

    .line 182
    if-nez v9, :cond_bf

    .line 184
    if-nez v5, :cond_bf

    .line 186
    if-nez v7, :cond_bf

    .line 188
    if-nez v6, :cond_bf

    .line 190
    move v12, v2

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move v12, v1

    .line 193
    :goto_c0
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 196
    const v11, 0x7f0a006a

    .line 199
    xor-int/lit8 v12, v3, 0x1

    .line 201
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 204
    const v11, 0x7f0a0054

    .line 207
    xor-int/lit8 v12, v3, 0x1

    .line 209
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 212
    const v11, 0x7f0a005a

    .line 215
    xor-int/lit8 v12, v3, 0x1

    .line 217
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 220
    const v11, 0x7f0a006e

    .line 223
    if-nez v3, :cond_f0

    .line 225
    if-nez v7, :cond_f0

    .line 227
    if-nez v8, :cond_f0

    .line 229
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 232
    move-result-object v12

    .line 233
    invoke-virtual {v12}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 236
    move-result v12

    .line 237
    if-eqz v12, :cond_f0

    .line 239
    move v12, v2

    .line 240
    goto :goto_f1

    .line 241
    :cond_f0
    move v12, v1

    .line 242
    :goto_f1
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 245
    const v11, 0x7f0a005e

    .line 248
    if-nez v3, :cond_107

    .line 250
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->isAddFavorite()Z

    .line 253
    move-result v12

    .line 254
    if-eqz v12, :cond_107

    .line 256
    if-nez v8, :cond_107

    .line 258
    if-nez v7, :cond_107

    .line 260
    if-nez v9, :cond_107

    .line 262
    move v12, v2

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    move v12, v1

    .line 265
    :goto_108
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 268
    const v11, 0x7f0a0079

    .line 271
    if-nez v3, :cond_11e

    .line 273
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->isAddFavorite()Z

    .line 276
    move-result v12

    .line 277
    if-nez v12, :cond_11e

    .line 279
    if-nez v8, :cond_11e

    .line 281
    if-nez v7, :cond_11e

    .line 283
    if-nez v9, :cond_11e

    .line 285
    move v12, v2

    .line 286
    goto :goto_11f

    .line 287
    :cond_11e
    move v12, v1

    .line 288
    :goto_11f
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 291
    const v11, 0x7f0a0072

    .line 294
    if-ne v0, v2, :cond_12b

    .line 296
    if-nez v9, :cond_12b

    .line 298
    move v12, v2

    .line 299
    goto :goto_12c

    .line 300
    :cond_12b
    move v12, v1

    .line 301
    :goto_12c
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 304
    const v11, 0x7f0a0050

    .line 307
    if-nez v3, :cond_148

    .line 309
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_148

    .line 319
    if-nez v8, :cond_148

    .line 321
    if-nez v9, :cond_148

    .line 323
    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    .line 325
    if-eq v3, v2, :cond_148

    .line 327
    move v3, v2

    .line 328
    goto :goto_149

    .line 329
    :cond_148
    move v3, v1

    .line 330
    :goto_149
    invoke-virtual {p0, p2, v11, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 333
    const v3, 0x7f0a006d

    .line 336
    if-eqz v4, :cond_157

    .line 338
    if-nez v7, :cond_157

    .line 340
    if-nez v6, :cond_157

    .line 342
    move v4, v2

    .line 343
    goto :goto_158

    .line 344
    :cond_157
    move v4, v1

    .line 345
    :goto_158
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 348
    const v3, 0x7f0a0077

    .line 351
    invoke-virtual {p0, p2, v3, v10}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 354
    const v3, 0x7f0a0061

    .line 357
    if-ne v0, v2, :cond_168

    .line 359
    move v4, v2

    .line 360
    goto :goto_169

    .line 361
    :cond_168
    move v4, v1

    .line 362
    :goto_169
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 365
    const v3, 0x7f0a0071

    .line 368
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 371
    const v3, 0x7f0a004d

    .line 374
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 377
    const v3, 0x7f0a0056

    .line 380
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 383
    const v3, 0x7f0a0039

    .line 386
    if-ne v0, v2, :cond_18d

    .line 388
    if-nez v5, :cond_18d

    .line 390
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    .line 393
    move-result v4

    .line 394
    if-eqz v4, :cond_18d

    .line 396
    move v4, v2

    .line 397
    goto :goto_18e

    .line 398
    :cond_18d
    move v4, v1

    .line 399
    :goto_18e
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 402
    const v3, 0x7f0a0055

    .line 405
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 408
    move-result v4

    .line 409
    if-eqz v4, :cond_19f

    .line 411
    if-ne v0, v2, :cond_19f

    .line 413
    if-nez v5, :cond_19f

    .line 415
    move v1, v2

    .line 416
    :cond_19f
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 419
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 422
    move-result p1

    .line 423
    return p1
.end method
