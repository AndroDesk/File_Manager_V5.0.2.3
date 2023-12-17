.class public Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;
.super Ljava/lang/Object;
.source "MirrorFileViewInteractionHubR.java"

# interfaces
.implements Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileViewInteractionHubR"


# instance fields
.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field private mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

.field private mLastClickTime:J

.field private mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

.field private mTabIndex:I

.field private mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;ILcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    iput p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->setupPathGallery()V

    iget p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    const/16 p3, 0x8

    if-eq p2, p3, :cond_21

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    const p3, 0x102000a

    invoke-interface {p2, p3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    :cond_21
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p2, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    new-instance p2, Landroidx/lifecycle/c0;

    invoke-direct {p2, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    return-void
.end method

.method private addToNavigationStack(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->add_stack_model:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private createPathGallery(Lcom/android/fileexplorer/activity/BaseActivity;)Lcom/android/fileexplorer/view/PathGallery;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private dismissToastView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    const v1, 0x7f0a042f

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    :cond_10
    return-void
.end method

.method private getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method private onGridClick()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_b

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    return-void
.end method

.method private onListClick()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b

    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    return-void
.end method

.method private onSortCallback()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->sortCurrentList()V

    :cond_7
    return-void
.end method

.method private setupPathGallery()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getNavigationBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a030c

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_16
    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/PathGallery;->setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;)V

    goto :goto_28

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->createPathGallery(Lcom/android/fileexplorer/activity/BaseActivity;)Lcom/android/fileexplorer/view/PathGallery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    :goto_28
    return-void
.end method

.method private toggleListColumnType()I
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/16 v1, 0x32

    :goto_b
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    return v1
.end method


# virtual methods
.method public clearCurrentScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->clearCurrentScroll()V

    :cond_c
    :goto_c
    return-void
.end method

.method public clickFile(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file does not exist on position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileViewInteractionHubR"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    iget-boolean p1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p1, :cond_27

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_2c

    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    :goto_2c
    return-void
.end method

.method public doPickCancel(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->forceChangeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    packed-switch v0, :pswitch_data_26

    const-string v0, ""

    return-object v0

    :pswitch_e  #0xb
    const-string v0, "favorite"

    return-object v0

    :pswitch_11  #0xa
    const-string v0, "secret_file"

    return-object v0

    :pswitch_14  #0x9
    const-string v0, "search"

    return-object v0

    :pswitch_17  #0x8
    const-string v0, "app"

    return-object v0

    :pswitch_1a  #0x7
    const-string v0, "usb"

    return-object v0

    :pswitch_1d  #0x6
    const-string v0, "router"

    return-object v0

    :cond_20
    const-string v0, "mobile"

    return-object v0

    :cond_23
    const-string v0, "sub_category"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x6
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
        :pswitch_17  #00000008
        :pswitch_14  #00000009
        :pswitch_11  #0000000a
        :pswitch_e  #0000000b
    .end packed-switch
.end method

.method public getRootPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getRoot()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method public hidePath()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPath path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileViewInteractionHubR"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    const-string p2, "First"

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    :cond_24
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-eqz p1, :cond_30

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p2, p2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_30
    return-void
.end method

.method public isRootPath()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public manualListItemClick(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_4a

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    new-instance v4, Ljava/io/File;

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_4b

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_4a
    move v1, v3

    :goto_4b
    if-ne v1, v3, :cond_4e

    return-void

    :cond_4e
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->clickFile(I)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->dismissToastView()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    goto :goto_2f

    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    const/4 v0, 0x1

    return v0

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .registers 7

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_a4

    goto/16 :goto_a2

    :sswitch_6
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onListClick()V

    goto/16 :goto_a2

    :sswitch_b
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onGridClick()V

    goto/16 :goto_a2

    :sswitch_10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto/16 :goto_a2

    :sswitch_1c
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto/16 :goto_a2

    :sswitch_28
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto/16 :goto_a2

    :sswitch_34
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto :goto_a2

    :sswitch_3f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto :goto_a2

    :sswitch_4a
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->toggleListColumnType()I

    move-result p1

    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    goto :goto_a2

    :sswitch_56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    goto :goto_a2

    :sswitch_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mLastClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-ltz p1, :cond_a2

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_97

    instance-of v1, v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    if-eqz v1, :cond_97

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "/private"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    :cond_93
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object p1

    :cond_97
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolderMirror(Ljava/lang/String;)V

    :cond_9c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mLastClickTime:J

    :cond_a2
    :goto_a2
    return v0

    nop

    :sswitch_data_a4
    .sparse-switch
        0x7f0a01eb -> :sswitch_5e
        0x7f0a01ec -> :sswitch_56
        0x7f0a01f1 -> :sswitch_4a
        0x7f0a0266 -> :sswitch_3f
        0x7f0a0267 -> :sswitch_34
        0x7f0a0268 -> :sswitch_28
        0x7f0a0269 -> :sswitch_1c
        0x7f0a026b -> :sswitch_10
        0x7f0a026d -> :sswitch_b
        0x7f0a026e -> :sswitch_6
        0x7f0a02dc -> :sswitch_5e
        0x7f0a033c -> :sswitch_56
        0x7f0a03ae -> :sswitch_3f
        0x7f0a03b3 -> :sswitch_34
        0x7f0a03b6 -> :sswitch_28
        0x7f0a03b7 -> :sswitch_1c
        0x7f0a03b9 -> :sswitch_10
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a03b3

    if-eq v0, v1, :cond_1d

    const v1, 0x7f0a03b6

    if-eq v0, v1, :cond_1d

    const v1, 0x7f0a03b7

    if-eq v0, v1, :cond_1d

    const v1, 0x7f0a03ae

    if-eq v0, v1, :cond_1d

    const v1, 0x7f0a03b9

    if-ne v0, v1, :cond_21

    :cond_1d
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_21
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onOptionsItemSelected(I)Z

    move-result p1

    return p1
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->rememberCurrentScroll()V

    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_1d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public onPathItemClickListener(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->addToNavigationStack(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 8

    const-string v0, "FileViewInteractionHubR"

    const-string v1, "onListItemClick: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    const/16 v2, 0xc

    const/16 v3, 0x9

    const/4 v4, 0x1

    const-string v5, "change dir to "

    if-eq v1, v4, :cond_6e

    if-eq v1, v3, :cond_56

    if-eq v1, v2, :cond_36

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->dismissToastView()V

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    goto :goto_85

    :cond_36
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->dismissToastView()V

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    goto :goto_85

    :cond_56
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_85

    :cond_6e
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_85
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    if-eq v0, v4, :cond_92

    if-eq v0, v3, :cond_92

    if-eq v0, v2, :cond_92

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->addToNavigationStack(Ljava/lang/String;)V

    :cond_92
    return-void
.end method

.method public rememberCurrentScroll()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-nez v1, :cond_9

    goto :goto_26

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/fileexplorer/view/PathGallery;->rememberCurrentScroll(II)V

    :cond_26
    :goto_26
    return-void
.end method

.method public showPath()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
