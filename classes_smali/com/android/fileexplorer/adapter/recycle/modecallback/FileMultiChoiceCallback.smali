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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    iput p4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->lambda$onActionItemClicked$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    return p0
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private isAddFavorite()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

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

.method private static synthetic lambda$onActionItemClicked$0(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onActionItemClicked$1(Landroid/content/DialogInterface;I)V
    .registers 3

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/fileexplorer/util/SettingsUtils;->setSkipWidgetTips(Ljava/lang/Boolean;)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddWidget(Landroid/content/Context;Ljava/util/List;)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v4, "手机tab页"

    invoke-static {v4, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_1c8

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_3a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_45
    if-eqz v0, :cond_5a

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_5a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_5e
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_69
    if-eqz v0, :cond_78

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_78
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_7c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_85
    if-eqz v0, :cond_9a

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_9a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_9e
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f11029a

    const v5, 0x7f11030c

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    const/16 v0, 0xc

    if-eq p2, v0, :cond_bb

    move v6, v2

    goto :goto_bc

    :cond_bb
    move v6, v1

    :goto_bc
    const/4 v0, 0x6

    if-eq p2, v0, :cond_c1

    move v7, v2

    goto :goto_c2

    :cond_c1
    move v7, v1

    :goto_c2
    if-eq p2, v0, :cond_c6

    move v8, v2

    goto :goto_c7

    :cond_c6
    move v8, v1

    :goto_c7
    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_cf
    if-eqz v0, :cond_e4

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_e4
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_e8
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_f3
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_fe
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_10d
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)V

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;)V

    return v2

    :sswitch_122
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->compress(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v2

    :sswitch_133
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_147

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->tryAddWidget(Landroid/view/ActionMode;Ljava/util/List;)V

    return v2

    :cond_147
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->obtainDataSize()I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x4

    if-le v0, p2, :cond_1b6

    invoke-static {}, Lcom/android/fileexplorer/util/SettingsUtils;->isToSkipWidgetTip()Z

    move-result v0

    if-nez v0, :cond_1b6

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110444

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f110445

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f110121

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f110050

    new-instance v1, Lcom/android/cloud/fragment/c;

    invoke-direct {v1, v2}, Lcom/android/cloud/fragment/c;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1100eb

    new-instance v1, Lcom/android/cloud/fragment/b;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/android/cloud/fragment/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_1c3

    :cond_1b6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z

    :goto_1c3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    nop

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

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    if-ne v0, v2, :cond_2b

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v4, :cond_2b

    move v4, v2

    goto :goto_2c

    :cond_2b
    move v4, v1

    :goto_2c
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v6, v6, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_32

    move v5, v2

    goto :goto_45

    :cond_44
    move v5, v1

    :goto_45
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileViewInteractionHub:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v6}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v7

    if-eqz v7, :cond_5d

    move v7, v2

    goto :goto_5e

    :cond_5d
    move v7, v1

    :goto_5e
    if-eqz v6, :cond_6c

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v6

    if-eqz v6, :cond_6c

    move v6, v2

    goto :goto_6d

    :cond_6c
    move v6, v1

    :goto_6d
    if-eqz v0, :cond_7e

    iget-object v8, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/fileexplorer/model/FileInfo;

    iget v8, v8, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7e

    move v8, v2

    goto :goto_7f

    :cond_7e
    move v8, v1

    :goto_7f
    if-eqz v0, :cond_90

    iget-object v9, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/model/FileInfo;

    iget v9, v9, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_90

    move v9, v2

    goto :goto_91

    :cond_90
    move v9, v1

    :goto_91
    if-nez v7, :cond_ad

    if-eqz v4, :cond_ad

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    move-result v10

    if-eqz v10, :cond_ad

    iget-object v10, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v10, v10, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ad

    move v10, v2

    goto :goto_ae

    :cond_ad
    move v10, v1

    :goto_ae
    const v11, 0x7f0a0075

    if-nez v3, :cond_bf

    if-nez v8, :cond_bf

    if-nez v9, :cond_bf

    if-nez v5, :cond_bf

    if-nez v7, :cond_bf

    if-nez v6, :cond_bf

    move v12, v2

    goto :goto_c0

    :cond_bf
    move v12, v1

    :goto_c0
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

    if-nez v3, :cond_f0

    if-nez v7, :cond_f0

    if-nez v8, :cond_f0

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v12

    if-eqz v12, :cond_f0

    move v12, v2

    goto :goto_f1

    :cond_f0
    move v12, v1

    :goto_f1
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a005e

    if-nez v3, :cond_107

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->isAddFavorite()Z

    move-result v12

    if-eqz v12, :cond_107

    if-nez v8, :cond_107

    if-nez v7, :cond_107

    if-nez v9, :cond_107

    move v12, v2

    goto :goto_108

    :cond_107
    move v12, v1

    :goto_108
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0079

    if-nez v3, :cond_11e

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->isAddFavorite()Z

    move-result v12

    if-nez v12, :cond_11e

    if-nez v8, :cond_11e

    if-nez v7, :cond_11e

    if-nez v9, :cond_11e

    move v12, v2

    goto :goto_11f

    :cond_11e
    move v12, v1

    :goto_11f
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0072

    if-ne v0, v2, :cond_12b

    if-nez v9, :cond_12b

    move v12, v2

    goto :goto_12c

    :cond_12b
    move v12, v1

    :goto_12c
    invoke-virtual {p0, p2, v11, v12}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v11, 0x7f0a0050

    if-nez v3, :cond_148

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    move-result v3

    if-nez v3, :cond_148

    if-nez v8, :cond_148

    if-nez v9, :cond_148

    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->mCurrentDeviceIndex:I

    if-eq v3, v2, :cond_148

    move v3, v2

    goto :goto_149

    :cond_148
    move v3, v1

    :goto_149
    invoke-virtual {p0, p2, v11, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a006d

    if-eqz v4, :cond_157

    if-nez v7, :cond_157

    if-nez v6, :cond_157

    move v4, v2

    goto :goto_158

    :cond_157
    move v4, v1

    :goto_158
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0077

    invoke-virtual {p0, p2, v3, v10}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0061

    if-ne v0, v2, :cond_168

    move v4, v2

    goto :goto_169

    :cond_168
    move v4, v1

    :goto_169
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0071

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a004d

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0056

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0039

    if-ne v0, v2, :cond_18d

    if-nez v5, :cond_18d

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    move-result v4

    if-eqz v4, :cond_18d

    move v4, v2

    goto :goto_18e

    :cond_18d
    move v4, v1

    :goto_18e
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0055

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v4

    if-eqz v4, :cond_19f

    if-ne v0, v2, :cond_19f

    if-nez v5, :cond_19f

    move v1, v2

    :cond_19f
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
