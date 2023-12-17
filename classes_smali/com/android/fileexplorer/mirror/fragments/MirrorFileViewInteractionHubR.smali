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
.method public constructor <init>(Lcom/android/fileexplorer/activity/BaseActivity;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;ILcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 6
    iput p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->setupPathGallery()V

    .line 15
    iget p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    .line 17
    const/16 p3, 0x8

    .line 19
    if-eq p2, p3, :cond_21

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 23
    const p3, 0x102000a

    .line 26
    invoke-interface {p2, p3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 32
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 34
    :cond_21
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 36
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 38
    invoke-direct {p2, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 41
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 43
    new-instance p2, Landroidx/lifecycle/c0;

    .line 45
    invoke-direct {p2, p1}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 48
    const-class p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 50
    invoke-virtual {p2, p1}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 56
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 58
    return-void
.end method

.method private addToNavigationStack(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->add_stack_model:Landroidx/lifecycle/q;

    .line 5
    new-instance v1, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 7
    invoke-direct {v1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->key(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method private createPathGallery(Lcom/android/fileexplorer/activity/BaseActivity;)Lcom/android/fileexplorer/view/PathGallery;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private dismissToastView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 3
    const v1, 0x7f0a042f

    .line 6
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    .line 17
    :cond_10
    return-void
.end method

.method private getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private onGridClick()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3c

    .line 7
    if-eq v0, v1, :cond_b

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    .line 19
    return-void
.end method

.method private onListClick()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x32

    .line 7
    if-eq v0, v1, :cond_b

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    .line 19
    return-void
.end method

.method private onSortCallback()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->sortCurrentList()V

    .line 8
    :cond_7
    return-void
.end method

.method private setupPathGallery()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getNavigationBar()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0a030c

    .line 10
    if-eqz v0, :cond_10

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_16

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 19
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    :goto_16
    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 27
    if-eqz v0, :cond_20

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/PathGallery;->setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;)V

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 35
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->createPathGallery(Lcom/android/fileexplorer/activity/BaseActivity;)Lcom/android/fileexplorer/view/PathGallery;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 41
    :goto_28
    return-void
.end method

.method private toggleListColumnType()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getListColumnTypeMirror()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3c

    .line 7
    if-eq v0, v1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 v1, 0x32

    .line 12
    :goto_b
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnTypeMirror(I)V

    .line 15
    return v1
.end method


# virtual methods
.method public clearCurrentScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->clearCurrentScroll()V

    .line 13
    :cond_c
    :goto_c
    return-void
.end method

.method public clickFile(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1f

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "file does not exist on position:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v0, "FileViewInteractionHubR"

    .line 28
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    iget-boolean p1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 34
    if-eqz p1, :cond_27

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 42
    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 45
    :goto_2c
    return-void
.end method

.method public doPickCancel(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    return-void
.end method

.method public forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->forceChangeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 8
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 16
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    const-string v0, ""

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 20
    return-object v0
.end method

.method public getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_23

    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_20

    .line 9
    packed-switch v0, :pswitch_data_26

    .line 12
    const-string v0, ""

    .line 14
    return-object v0

    .line 15
    :pswitch_e  #0xb
    const-string v0, "favorite"

    .line 17
    return-object v0

    .line 18
    :pswitch_11  #0xa
    const-string v0, "secret_file"

    .line 20
    return-object v0

    .line 21
    :pswitch_14  #0x9
    const-string v0, "search"

    .line 23
    return-object v0

    .line 24
    :pswitch_17  #0x8
    const-string v0, "app"

    .line 26
    return-object v0

    .line 27
    :pswitch_1a  #0x7
    const-string v0, "usb"

    .line 29
    return-object v0

    .line 30
    :pswitch_1d  #0x6
    const-string v0, "router"

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-string v0, "mobile"

    .line 35
    return-object v0

    .line 36
    :cond_23
    const-string v0, "sub_category"

    .line 38
    return-object v0

    .line 39
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getRoot()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hidePath()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "initPath path = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "FileViewInteractionHubR"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    if-eqz v0, :cond_24

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 32
    const-string p2, "First"

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    .line 37
    :cond_24
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 39
    if-eqz p1, :cond_30

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-static {p2, p2, p2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 49
    :cond_30
    return-void
.end method

.method public isRootPath()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->isRoot()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public manualListItemClick(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/io/File;

    .line 10
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 22
    invoke-interface {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getList()Ljava/util/ArrayList;

    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v2

    .line 31
    const/4 v3, -0x1

    .line 32
    if-ge v1, v2, :cond_4a

    .line 34
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 36
    invoke-interface {v2, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_47

    .line 42
    iget-object v4, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_47

    .line 50
    new-instance v4, Ljava/io/File;

    .line 52
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 54
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_47

    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_1a

    .line 75
    :cond_4a
    move v1, v3

    .line 76
    :goto_4b
    if-ne v1, v3, :cond_4e

    .line 78
    return-void

    .line 79
    :cond_4e
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->clickFile(I)V

    .line 82
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->dismissToastView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_24

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->isRootPath()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_24

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->hasArchiveToDecompress()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2f

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 36
    goto :goto_2f

    .line 37
    :cond_24
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;

    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2f

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 46
    const/4 v0, 0x1

    .line 47
    return v0

    .line 48
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .registers 7

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_a4

    goto/16 :goto_a2

    .line 4
    :sswitch_6
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onListClick()V

    goto/16 :goto_a2

    .line 5
    :sswitch_b
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onGridClick()V

    goto/16 :goto_a2

    .line 6
    :sswitch_10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto/16 :goto_a2

    .line 8
    :sswitch_1c
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto/16 :goto_a2

    .line 10
    :sswitch_28
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto/16 :goto_a2

    .line 12
    :sswitch_34
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto :goto_a2

    .line 14
    :sswitch_3f
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onSortCallback()V

    goto :goto_a2

    .line 16
    :sswitch_4a
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->toggleListColumnType()I

    move-result p1

    .line 17
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    goto :goto_a2

    .line 18
    :sswitch_56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    .line 19
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    goto :goto_a2

    .line 20
    :sswitch_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mLastClickTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-ltz p1, :cond_a2

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz v1, :cond_97

    instance-of v1, v1, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    if-eqz v1, :cond_97

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "/private"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 25
    :cond_93
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_97
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolderMirror(Ljava/lang/String;)V

    .line 27
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

    .line 1
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

    .line 2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3
    :cond_21
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onOptionsItemSelected(I)Z

    move-result p1

    return p1
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->rememberCurrentScroll()V

    .line 4
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 6
    const-string v1, "smb://"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_16

    .line 14
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 30
    :cond_1d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {v0, v0, v0, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 38
    return-void
.end method

.method public onPathItemClickListener(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->addToNavigationStack(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1d

    .line 18
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 30
    :cond_1d
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 8

    .line 1
    const-string v0, "FileViewInteractionHubR"

    .line 3
    const-string v1, "onListItemClick: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    .line 10
    const/16 v2, 0xc

    .line 12
    const/16 v3, 0x9

    .line 14
    const/4 v4, 0x1

    .line 15
    const-string v5, "change dir to "

    .line 17
    if-eq v1, v4, :cond_6e

    .line 19
    if-eq v1, v3, :cond_56

    .line 21
    if-eq v1, v2, :cond_36

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->dismissToastView()V

    .line 26
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 30
    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 44
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 46
    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 48
    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 54
    goto :goto_85

    .line 55
    :cond_36
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v1

    .line 59
    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->dismissToastView()V

    .line 74
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 76
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 78
    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 80
    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 86
    goto :goto_85

    .line 87
    :cond_56
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object v1

    .line 91
    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 105
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 107
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    goto :goto_85

    .line 111
    :cond_6e
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v1

    .line 115
    iget-object v5, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 129
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 131
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    :goto_85
    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mTabIndex:I

    .line 136
    if-eq v0, v4, :cond_92

    .line 138
    if-eq v0, v3, :cond_92

    .line 140
    if-eq v0, v2, :cond_92

    .line 142
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->addToNavigationStack(Ljava/lang/String;)V

    .line 147
    :cond_92
    return-void
.end method

.method public rememberCurrentScroll()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_26

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 21
    move-result v1

    .line 22
    :goto_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/fileexplorer/view/PathGallery;->rememberCurrentScroll(II)V

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public showPath()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method
