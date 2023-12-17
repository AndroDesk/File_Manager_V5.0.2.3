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
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mShowSmallIcon:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V
    .registers 3

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-void
.end method

.method private bindCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;Lcom/android/fileexplorer/view/GridItemView;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 7
    if-eq v0, v1, :cond_11

    .line 9
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->CLOUD_CACHED:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    .line 11
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/GridItemView;)V

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    .line 25
    const/16 v0, 0x8

    .line 27
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFavVisibility(I)V

    .line 30
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getTransferId()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->loadCloudFileIcon(Lcom/android/fileexplorer/view/GridItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V

    .line 45
    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/view/GridItemView;->setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V

    .line 48
    return-void
.end method

.method private bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/GridItemView;)V
    .registers 6

    .line 1
    const-string v0, "Trace_bindFileItem"

    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 18
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-ne v0, v1, :cond_4c

    .line 27
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2d

    .line 35
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 37
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    .line 40
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 42
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    .line 45
    goto :goto_75

    .line 46
    :cond_2d
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v0

    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 68
    move-result-wide v0

    .line 69
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    .line 76
    goto :goto_75

    .line 77
    :cond_4c
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5f

    .line 85
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 87
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    .line 90
    iget-object v0, p1, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    .line 92
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    .line 95
    goto :goto_75

    .line 96
    :cond_5f
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 103
    move-result-wide v0

    .line 104
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    .line 118
    :goto_75
    const/16 v0, 0x8

    .line 120
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setTransStateVisibility(I)V

    .line 123
    iget-boolean v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 125
    if-eqz v1, :cond_7f

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move v2, v0

    .line 129
    :goto_80
    invoke-virtual {p2, v2}, Lcom/android/fileexplorer/view/GridItemView;->setFavVisibility(I)V

    .line 132
    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/dao/file/FileItem;)V

    .line 135
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 138
    return-void
.end method

.method private isCloudCachedDoc(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 11
    if-eq v0, v1, :cond_1c

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method private isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileItem;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    check-cast p1, Lcom/android/cloud/bean/CloudFileItem;

    .line 7
    invoke-virtual {p1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "video"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private loadCloudFileIcon(Lcom/android/fileexplorer/view/GridItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 8
    move-result-object v3

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    move-object v1, p2

    .line 13
    move-object v4, p3

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;ZZ)V

    .line 17
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

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p1

    .line 7
    check-cast v2, Lcom/android/fileexplorer/view/GridItemView;

    .line 9
    sget-boolean v3, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_30

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_30

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 36
    move-result-object v3

    .line 37
    invoke-static {v1, v5, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 40
    move-result v1

    .line 41
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v1, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 48
    return-void

    .line 49
    :cond_30
    invoke-static/range {p2 .. p2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 52
    move-result-object v3

    .line 53
    sget-object v6, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 55
    if-ne v3, v6, :cond_3f

    .line 57
    check-cast v1, Lcom/android/cloud/bean/CloudFileItem;

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-direct {v0, v2, v1, v3}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->loadCloudFileIcon(Lcom/android/fileexplorer/view/GridItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V

    .line 63
    return-void

    .line 64
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v6

    .line 80
    sget-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 82
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 85
    move-result v7

    .line 86
    if-eq v7, v6, :cond_e1

    .line 88
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_5f

    .line 94
    goto/16 :goto_e1

    .line 96
    :cond_5f
    invoke-virtual {v2, v5}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    .line 99
    sget-object v7, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 101
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 104
    move-result v7

    .line 105
    if-eq v7, v6, :cond_b0

    .line 107
    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_b0

    .line 113
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->isCloudCachedDoc(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_77

    .line 119
    goto :goto_b0

    .line 120
    :cond_77
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getViewType(I)I

    .line 123
    move-result v6

    .line 124
    const/4 v7, 0x4

    .line 125
    if-eq v6, v7, :cond_a1

    .line 127
    const/16 v7, 0xe

    .line 129
    if-eq v6, v7, :cond_83

    .line 131
    goto :goto_af

    .line 132
    :cond_83
    sget-boolean v6, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 134
    if-eqz v6, :cond_97

    .line 136
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 139
    move-result-object v1

    .line 140
    invoke-static {v3, v5, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 143
    move-result v3

    .line 144
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v1, v3, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 151
    return-void

    .line 152
    :cond_97
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 155
    move-result-object v2

    .line 156
    const-string v3, ""

    .line 158
    invoke-static {v1, v2, v3, v5}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 161
    goto :goto_af

    .line 162
    :cond_a1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 165
    move-result-object v3

    .line 166
    const v4, 0x7f0801af

    .line 169
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByFileItemWithPadding(Lcom/android/fileexplorer/dao/file/FileItem;ILandroid/widget/ImageView;)V

    .line 176
    :goto_af
    return-void

    .line 177
    :cond_b0
    :goto_b0
    invoke-static {v3}, Lcom/android/fileexplorer/util/MimeUtils;->isHorizontalDoc(Ljava/lang/String;)Z

    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_b9

    .line 183
    const-string v6, "264X168"

    .line 185
    goto :goto_bb

    .line 186
    :cond_b9
    const-string v6, "186X264"

    .line 188
    :goto_bb
    move-object v9, v6

    .line 189
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 192
    move-result-object v7

    .line 193
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_d7

    .line 211
    invoke-static {v3}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 214
    move-result v1

    .line 215
    goto :goto_db

    .line 216
    :cond_d7
    invoke-static {v3, v5, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 219
    move-result v1

    .line 220
    :goto_db
    move v11, v1

    .line 221
    const/4 v12, 0x0

    .line 222
    invoke-virtual/range {v7 .. v12}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    .line 225
    return-void

    .line 226
    :cond_e1
    :goto_e1
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 232
    move-result-object v13

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 240
    move-result-wide v14

    .line 241
    invoke-virtual {v2}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 244
    move-result-object v16

    .line 245
    const/16 v17, 0x0

    .line 247
    const v18, 0x7f0801af

    .line 250
    const/16 v19, 0x10e

    .line 252
    invoke-static/range {v13 .. v19}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRoundWithPadding(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V

    .line 255
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V
    .registers 7

    const-string p3, "Trace_onBindChildViewHolder"

    .line 2
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_65

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, p4, :cond_16

    goto :goto_65

    .line 4
    :cond_16
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz p3, :cond_65

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-nez v0, :cond_29

    goto :goto_65

    .line 6
    :cond_29
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 7
    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileName(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    const/4 v1, 0x4

    .line 10
    :goto_44
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    if-eqz v0, :cond_50

    .line 11
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    .line 12
    :cond_50
    instance-of p2, p3, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz p2, :cond_5a

    .line 13
    check-cast p3, Lcom/android/cloud/bean/CloudFileItem;

    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->bindCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;Lcom/android/fileexplorer/view/GridItemView;)V

    goto :goto_62

    .line 14
    :cond_5a
    sget-object p2, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 15
    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/GridItemView;)V

    .line 16
    :goto_62
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_65
    :goto_65
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V

    return-void
.end method

.method public onCheckChange(Landroidx/recyclerview/widget/RecyclerView$b0;IZ)V
    .registers 5

    .line 1
    if-eqz p1, :cond_1c

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 5
    check-cast p2, Lcom/android/fileexplorer/view/GridItemView;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x4

    .line 18
    :goto_11
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 23
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 25
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 34
    :goto_21
    return-void
.end method
