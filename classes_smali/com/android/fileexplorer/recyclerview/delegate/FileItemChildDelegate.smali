.class public Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.source "FileItemChildDelegate.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;"
    }
.end annotation


# instance fields
.field public mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field public mShowSmallIcon:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mShowSmallIcon:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-void
.end method

.method private bindCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;Lcom/android/fileexplorer/view/GridItemView;)V
    .registers 5

    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-eq v0, v1, :cond_11

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/GridItemView;)V

    return-void

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFavVisibility(I)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->loadCloudFileIcon(Lcom/android/fileexplorer/view/GridItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V

    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V

    return-void
.end method

.method private bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/GridItemView;)V
    .registers 6

    const-string v0, "Trace_bindFileItem"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4c

    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    goto :goto_75

    :cond_2d
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    goto :goto_75

    :cond_4c
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    goto :goto_75

    :cond_5f
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    :goto_75
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    iget-boolean v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    if-eqz v1, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v0

    :goto_80
    invoke-virtual {p2, v2}, Lcom/android/fileexplorer/view/GridItemView;->setFavVisibility(I)V

    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/dao/file/FileItem;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private isCloudCachedDoc(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-eq v0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private loadCloudFileIcon(Lcom/android/fileexplorer/view/GridItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V
    .registers 11

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;ZZ)V

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00dc

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/fileexplorer/view/GridItemView;

    sget-boolean v3, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v3

    invoke-static {v1, v5, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v1

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    return-void

    :cond_30
    invoke-static/range {p2 .. p2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v3

    sget-object v6, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-ne v3, v6, :cond_3f

    check-cast v1, Lcom/android/cloud/bean/CloudFileItem;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->loadCloudFileIcon(Lcom/android/fileexplorer/view/GridItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V

    return-void

    :cond_3f
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v6, :cond_e1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v7

    if-eqz v7, :cond_5f

    goto/16 :goto_e1

    :cond_5f
    invoke-virtual {v2, v5}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    sget-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v6, :cond_b0

    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->isCloudCachedDoc(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v7

    if-eqz v7, :cond_77

    goto :goto_b0

    :cond_77
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getViewType(I)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_a1

    const/16 v7, 0xe

    if-eq v6, v7, :cond_83

    goto :goto_af

    :cond_83
    sget-boolean v6, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v6, :cond_97

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v1

    invoke-static {v3, v5, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    return-void

    :cond_97
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3, v5}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_af

    :cond_a1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v3

    const v4, 0x7f0801af

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByFileItemWithPadding(Lcom/android/fileexplorer/dao/file/FileItem;ILandroid/widget/ImageView;)V

    :goto_af
    return-void

    :cond_b0
    :goto_b0
    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->isHorizontalDoc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const-string v6, "264X168"

    goto :goto_bb

    :cond_b9
    const-string v6, "186X264"

    :goto_bb
    move-object v9, v6

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-static {v3}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    move-result v1

    goto :goto_db

    :cond_d7
    invoke-static {v3, v5, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v1

    :goto_db
    move v11, v1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    return-void

    :cond_e1
    :goto_e1
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v16

    const/16 v17, 0x0

    const v18, 0x7f0801af

    const/16 v19, 0x10e

    invoke-static/range {v13 .. v19}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRoundWithPadding(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V
    .registers 7

    const-string p3, "Trace_onBindChildViewHolder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_65

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, p4, :cond_16

    goto :goto_65

    :cond_16
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz p3, :cond_65

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-nez v0, :cond_29

    goto :goto_65

    :cond_29
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    const/4 v1, 0x4

    :goto_44
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    if-eqz v0, :cond_50

    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    :cond_50
    instance-of p2, p3, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz p2, :cond_5a

    check-cast p3, Lcom/android/cloud/bean/CloudFileItem;

    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->bindCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;Lcom/android/fileexplorer/view/GridItemView;)V

    goto :goto_62

    :cond_5a
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/GridItemView;)V

    :goto_62
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_65
    :goto_65
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V

    return-void
.end method

.method public onCheckChange(Landroidx/recyclerview/widget/RecyclerView$b0;IZ)V
    .registers 5

    if-eqz p1, :cond_1c

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p2, Lcom/android/fileexplorer/view/GridItemView;

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x4

    :goto_11
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    goto :goto_21

    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_21
    return-void
.end method
