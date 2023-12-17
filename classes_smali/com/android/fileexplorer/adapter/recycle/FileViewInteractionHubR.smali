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

.field public static final CHOICE_MODE_PICK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_PICK_FOLDER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_PICK_MULTIPLE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_PICK_MULTIPLE_NO_FOLDER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHOICE_MODE_VIEW:I = 0x0
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
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 6
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->setupPathGallery()V

    .line 13
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

    .line 15
    const/16 p2, 0x8

    .line 17
    if-eq p1, p2, :cond_1f

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 21
    const p2, 0x102000a

    .line 24
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 32
    :cond_1f
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 36
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 39
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 41
    return-void
.end method

.method private createPathGallery(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Lcom/android/fileexplorer/view/PathGallery;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method private dismissToastView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setupPathGallery()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 19
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    :goto_16
    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 27
    if-eqz v0, :cond_20

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/PathGallery;->setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;)V

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 35
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->createPathGallery(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Lcom/android/fileexplorer/view/PathGallery;

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 41
    :goto_28
    return-void
.end method

.method private toggleListColumnType()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    invoke-static {v1}, Lcom/android/fileexplorer/model/SettingManager;->setListColumnType(I)V

    .line 13
    return v1
.end method

.method private toggleViewType()V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 23
    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    move-result-object v1

    .line 29
    iget v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 31
    if-nez v3, :cond_21

    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_21
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 36
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 39
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 42
    move-result-object v0

    .line 43
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    .line 48
    return-void
.end method

.method private updateSortMethod(IZ)V
    .registers 7

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 23
    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    move-result-object v1

    .line 29
    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 31
    iput-boolean p2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 33
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onSortCallback()V

    .line 39
    return-void
.end method

.method private updateViewType(I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/fileexplorer/controller/FabPreference;

    .line 9
    invoke-direct {v1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result v3

    .line 21
    iput v3, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 23
    iput-boolean v2, v1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 25
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 28
    move-result-object v1

    .line 29
    iput p1, v1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 31
    invoke-static {v0, v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->putFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)V

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/model/MultiListTypeManager;->getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager;->onMultiListChange(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public clearCurrentScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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

.method public clickFile(ILjava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 3
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v2

    .line 7
    if-nez v2, :cond_1f

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v0, "file does not exist on position:"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string p2, "FileViewInteractionHubR"

    .line 28
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    instance-of v0, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 34
    if-eqz v0, :cond_44

    .line 36
    check-cast v2, Lcom/android/fileexplorer/model/PcModeFileInfo;

    .line 38
    if-eqz v2, :cond_5d

    .line 40
    iget-object p1, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mComponentName:Landroid/content/ComponentName;

    .line 42
    if-eqz p1, :cond_5d

    .line 44
    new-instance p1, Landroid/content/Intent;

    .line 46
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 49
    iget-object p2, v2, Lcom/android/fileexplorer/model/PcModeFileInfo;->mComponentName:Landroid/content/ComponentName;

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    const/high16 p2, 0x10000000

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 61
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    goto :goto_5d

    .line 69
    :cond_44
    iget-boolean v0, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 71
    if-eqz v0, :cond_4c

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 76
    goto :goto_5d

    .line 77
    :cond_4c
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 81
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->getList()Ljava/util/ArrayList;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    move v4, p1

    .line 90
    move-object v6, p2

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_5d
    :goto_5d
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

.method public getCurrentFileAmount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    .line 19
    return v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getRoot()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    if-eqz v0, :cond_24

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 32
    const-string p2, "First"

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    .line 37
    :cond_24
    sget-boolean p1, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 39
    if-nez p1, :cond_2e

    .line 41
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_36

    .line 47
    :cond_2e
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 50
    move-result-object p1

    .line 51
    const/4 p2, 0x1

    .line 52
    invoke-static {p2, p2, p2, p1}, La/a;->z(ZZZLorg/greenrobot/eventbus/EventBus;)V

    .line 55
    :cond_36
    return-void
.end method

.method public isRootPath()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

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
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

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
    const-string p1, "手机tab页"

    .line 81
    invoke-virtual {p0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->clickFile(ILjava/lang/String;)V

    .line 84
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->dismissToastView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_24

    .line 12
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->isRootPath()Z

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
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;

    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2f

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

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
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_9a

    goto/16 :goto_98

    .line 2
    :sswitch_7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateViewType(I)V

    goto/16 :goto_98

    .line 3
    :sswitch_c
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateViewType(I)V

    goto/16 :goto_98

    .line 4
    :sswitch_11
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto/16 :goto_98

    .line 5
    :sswitch_1c
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto/16 :goto_98

    .line 6
    :sswitch_27
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    .line 7
    :sswitch_31
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    .line 8
    :sswitch_3b
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    .line 9
    :sswitch_45
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    .line 10
    :sswitch_4f
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    .line 11
    :sswitch_59
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->updateSortMethod(IZ)V

    goto :goto_98

    .line 12
    :sswitch_63
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->toggleViewType()V

    goto :goto_98

    .line 13
    :sswitch_67
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz p1, :cond_98

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-eqz v0, :cond_93

    instance-of v0, v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    if-eqz v0, :cond_93

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "/private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 17
    :cond_8f
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getExternalPrivateRootDir()Ljava/lang/String;

    move-result-object p1

    .line 18
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

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    move-result p1

    return p1
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->rememberCurrentScroll()V

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZZ)V

    .line 40
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onPathItemClickListener(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1a

    .line 15
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 27
    :cond_1a
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public onSortCallback()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileViewListener:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR$IFileInteractionListener;->sortCurrentList()V

    .line 8
    :cond_7
    return-void
.end method

.method public operationClickFolder(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 7

    .line 1
    const-string v0, "FileViewInteractionHubR"

    .line 3
    const-string v1, "onListItemClick: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mTabIndex:I

    .line 10
    const-string v2, "change dir to "

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_9c

    .line 15
    const/16 v4, 0x9

    .line 17
    if-eq v1, v4, :cond_80

    .line 19
    const/16 v4, 0xc

    .line 21
    if-eq v1, v4, :cond_60

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->dismissToastView()V

    .line 26
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->rememberCurrentScroll()V

    .line 45
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 47
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 49
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 56
    iput p1, v0, Lcom/android/fileexplorer/model/PathSegment;->fileAmount:I

    .line 58
    iget-object p1, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 60
    const-string v1, "smb://"

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4c

    .line 68
    iget-object p1, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 70
    const/4 v1, 0x4

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 77
    :cond_4c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 79
    if-eqz p1, :cond_53

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 84
    :cond_53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lcom/android/fileexplorer/event/FileChangeEvent;

    .line 90
    invoke-direct {v0, v3, v3, v3, v3}, Lcom/android/fileexplorer/event/FileChangeEvent;-><init>(ZZZZ)V

    .line 93
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    goto :goto_b7

    .line 97
    :cond_60
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->dismissToastView()V

    .line 116
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 118
    iget-object v1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 120
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 122
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 128
    goto :goto_b7

    .line 129
    :cond_80
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    move-result-object v1

    .line 133
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 147
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 150
    move-result-object v0

    .line 151
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 153
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 156
    goto :goto_b7

    .line 157
    :cond_9c
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-result-object v1

    .line 161
    iget-object v2, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 175
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 178
    move-result-object v0

    .line 179
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 181
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 184
    :goto_b7
    return-void
.end method

.method public rememberCurrentScroll()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 24
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

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
