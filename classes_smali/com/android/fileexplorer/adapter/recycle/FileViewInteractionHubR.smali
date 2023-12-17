.class public Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;
.super Ljava/lang/Object;
.source "FileViewInteractionHubR.java"

# interfaces
.implements Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final CHOICE_MODE_PICK:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_PICK_FOLDER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_PICK_MULTIPLE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_PICK_MULTIPLE_NO_FOLDER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_VIEW:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "FileViewInteractionHubR"


# instance fields
.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field private mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

.field private mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

.field private mTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->CHOICE_MODE_PICK:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->CHOICE_MODE_PICK_FOLDER:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->CHOICE_MODE_PICK_MULTIPLE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->CHOICE_MODE_PICK_MULTIPLE_NO_FOLDER:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->CHOICE_MODE_VIEW:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->setupPathGallery()V

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    const p2, 0x102000a

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    :cond_1f
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method private createPathGallery(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Lcom/android/fileexplorer/view/PathGallery;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/PathGallery;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private dismissToastView()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method private setupPathGallery()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getNavigationBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a030c

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_16
    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/PathGallery;->setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;)V

    goto :goto_28

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->createPathGallery(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Lcom/android/fileexplorer/view/PathGallery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    :goto_28
    return-void
.end method

.method private toggleListColumnType()I
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnType(I)V

    return v1
.end method

.method private toggleViewType()V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iget v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    if-nez v3, :cond_21

    const/4 v2, 0x1

    :cond_21
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    return-void
.end method

.method private updateSortMethod(IZ)V
    .registers 7

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean p2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onSortCallback()V

    return-void
.end method

.method private updateViewType(I)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    return-void
.end method


# virtual methods
.method public clearCurrentScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->clearCurrentScroll()V

    :cond_c
    :goto_c
    return-void
.end method

.method public clickFile(ILjava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    if-nez v2, :cond_1f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file does not exist on position:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FileViewInteractionHubR"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    instance-of v0, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v0, :cond_44

    check-cast v2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    if-eqz v2, :cond_5d

    iget-object p1, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_5d

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5d

    :cond_44
    iget-boolean v0, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_4c

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_5d

    :cond_4c
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    move-result-object v5

    move v4, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public doPickCancel(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getCurrentFileAmount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    return v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getRoot()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
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

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    const-string p2, "First"

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    :cond_24
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    if-nez p1, :cond_2e

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_2e
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p2, p2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    :cond_36
    return-void
.end method

.method public isRootPath()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    invoke-interface {p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_4a

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

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
    const-string p1, "手机tab页"

    invoke-virtual {p0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->clickFile(ILjava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->dismissToastView()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->isRootPath()Z

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
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    const/4 v0, 0x1

    return v0

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_9a

    goto/16 :goto_98

    :sswitch_7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateViewType(I)V

    goto/16 :goto_98

    :sswitch_c
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateViewType(I)V

    goto/16 :goto_98

    :sswitch_11
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto/16 :goto_98

    :sswitch_1c
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto/16 :goto_98

    :sswitch_27
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    :sswitch_31
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    :sswitch_3b
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    :sswitch_45
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    :sswitch_4f
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    :sswitch_59
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    :sswitch_63
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->toggleViewType()V

    goto :goto_98

    :sswitch_67
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_93

    instance-of v0, v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    if-eqz v0, :cond_93

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "/private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    :cond_8f
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object p1

    :cond_93
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->createFolder(Ljava/lang/String;)V

    :cond_98
    :goto_98
    return v1

    nop

    :sswitch_data_9a
    .sparse-switch
        0x7f0a01eb -> :sswitch_67
        0x7f0a01f1 -> :sswitch_63
        0x7f0a02dc -> :sswitch_67
        0x7f0a03af -> :sswitch_59
        0x7f0a03b0 -> :sswitch_4f
        0x7f0a03b4 -> :sswitch_45
        0x7f0a03b5 -> :sswitch_3b
        0x7f0a03b6 -> :sswitch_31
        0x7f0a03b7 -> :sswitch_27
        0x7f0a03ba -> :sswitch_1c
        0x7f0a03bb -> :sswitch_11
        0x7f0a048f -> :sswitch_c
        0x7f0a0492 -> :sswitch_7
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    move-result p1

    return p1
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->rememberCurrentScroll()V

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_1d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZZ)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPathItemClickListener(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method public onSortCallback()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->sortCurrentList()V

    :cond_7
    return-void
.end method

.method public operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 7

    const-string v0, "FileViewInteractionHubR"

    const-string v1, "onListItemClick: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

    const-string v2, "change dir to "

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9c

    const/16 v4, 0x9

    if-eq v1, v4, :cond_80

    const/16 v4, 0xc

    if-eq v1, v4, :cond_60

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->dismissToastView()V

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->rememberCurrentScroll()V

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    iput p1, v0, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    iget-object p1, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    const-string v1, "smb://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    :cond_4c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz p1, :cond_53

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZZ)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_b7

    :cond_60
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->dismissToastView()V

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    goto :goto_b7

    :cond_80
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_b7

    :cond_9c
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_b7
    return-void
.end method

.method public rememberCurrentScroll()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

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
