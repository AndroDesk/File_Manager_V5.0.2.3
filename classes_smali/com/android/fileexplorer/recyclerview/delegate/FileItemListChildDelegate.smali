.class public Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.source "FileItemListChildDelegate.java"

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
.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field private padding:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    .line 4
    const v0, 0x7f07029b

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->padding:I

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 15
    return-void
.end method

.method private bindCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;Lcom/android/fileexplorer/view/ListItemView;)V
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
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/ListItemView;)V

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/ListItemView;->setVideoTagVisible(Z)V

    .line 25
    const/16 v0, 0x8

    .line 27
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/ListItemView;->setFavVisibility(I)V

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
    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->loadCloudFileIcon(Lcom/android/fileexplorer/view/ListItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V

    .line 45
    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/view/ListItemView;->setTransState(Lcom/android/cloud/bean/TransferState;Lcom/android/cloud/bean/CloudFileItem;)V

    .line 48
    return-void
.end method

.method private bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/ListItemView;)V
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/ListItemView;->setTransStateVisibility(I)V

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->loadFileIcon(Lcom/android/fileexplorer/view/ListItemView;Lcom/android/fileexplorer/dao/file/FileItem;)V

    .line 9
    return-void
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

.method private loadCloudFileIcon(Lcom/android/fileexplorer/view/ListItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V
    .registers 13

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 8
    move-result-object v3

    .line 9
    iget v7, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->padding:I

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    move-object v1, p2

    .line 14
    move-object v4, p3

    .line 15
    move v5, v7

    .line 16
    move v6, v7

    .line 17
    invoke-virtual/range {v0 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;IIIZ)V

    .line 20
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00d6

    return v0
.end method

.method public loadFileIcon(Lcom/android/fileexplorer/view/ListItemView;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileItem(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 13
    const/4 v5, 0x0

    .line 14
    if-ne v3, v4, :cond_1c

    .line 16
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 19
    move-result v3

    .line 20
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/view/ListItemView;->setVideoTagVisible(Z)V

    .line 23
    check-cast v2, Lcom/android/cloud/bean/CloudFileItem;

    .line 25
    invoke-direct {v0, v1, v2, v5}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->loadCloudFileIcon(Lcom/android/fileexplorer/view/ListItemView;Lcom/android/cloud/bean/CloudFileItem;Lcom/android/cloud/bean/TransferState;)V

    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v3

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v11

    .line 45
    sget-boolean v4, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 47
    const v6, 0x7f07029f

    .line 50
    if-nez v4, :cond_6b

    .line 52
    sget-object v4, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 57
    move-result v4

    .line 58
    if-eq v4, v3, :cond_41

    .line 60
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->isCloudVideo(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_6b

    .line 66
    :cond_41
    const/4 v3, 0x1

    .line 67
    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/view/ListItemView;->setVideoTagVisible(Z)V

    .line 70
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 77
    move-result-object v7

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 85
    move-result-wide v8

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 89
    move-result-object v10

    .line 90
    const/4 v12, 0x0

    .line 91
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 94
    move-result v13

    .line 95
    iget v1, v0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->padding:I

    .line 97
    const/16 v17, 0x0

    .line 99
    move-object v6, v3

    .line 100
    move v14, v1

    .line 101
    move v15, v1

    .line 102
    move/from16 v16, v1

    .line 104
    invoke-virtual/range {v6 .. v17}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIIZ)V

    .line 107
    return-void

    .line 108
    :cond_6b
    const/4 v4, 0x0

    .line 109
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/ListItemView;->setVideoTagVisible(Z)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    sget-object v5, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 121
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 124
    move-result v5

    .line 125
    if-eq v3, v5, :cond_93

    .line 127
    instance-of v3, v2, Lcom/android/cloud/bean/CloudFileItem;

    .line 129
    if-eqz v3, :cond_83

    .line 131
    goto :goto_93

    .line 132
    :cond_83
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 135
    move-result-object v2

    .line 136
    invoke-static {v11, v4, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 139
    move-result v3

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v2, v3, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 147
    goto :goto_b8

    .line 148
    :cond_93
    :goto_93
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 151
    move-result-object v3

    .line 152
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 155
    move-result-object v7

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 163
    move-result-wide v8

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 167
    move-result-object v10

    .line 168
    const/4 v12, 0x0

    .line 169
    invoke-static {v6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 172
    move-result v13

    .line 173
    iget v1, v0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->padding:I

    .line 175
    const/16 v17, 0x0

    .line 177
    move-object v6, v3

    .line 178
    move v14, v1

    .line 179
    move v15, v1

    .line 180
    move/from16 v16, v1

    .line 182
    invoke-virtual/range {v6 .. v17}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIIZ)V

    .line 185
    :goto_b8
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V
    .registers 11

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_ae

    instance-of v0, p1, Lcom/android/fileexplorer/view/ListItemView;

    if-nez v0, :cond_14

    goto/16 :goto_ae

    .line 5
    :cond_14
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    .line 6
    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ListItemView;->setFileName(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V

    const v0, 0x7f11012a

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v1

    .line 10
    iget v1, v1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_59

    .line 11
    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_69

    .line 13
    :cond_59
    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p3}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/dao/file/FileItem;)Ljava/lang/String;

    move-result-object v2

    .line 15
    :goto_69
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 16
    invoke-static {v2, v0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    .line 17
    :cond_74
    invoke-static {v1, v0, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_78
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ListItemView;->setFileSummary(Ljava/lang/CharSequence;)V

    .line 19
    instance-of v0, p3, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_86

    .line 20
    move-object v0, p3

    check-cast v0, Lcom/android/cloud/bean/CloudFileItem;

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->bindCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;Lcom/android/fileexplorer/view/ListItemView;)V

    goto :goto_8e

    .line 21
    :cond_86
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ListItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 22
    invoke-direct {p0, p3, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->bindFileItem(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/view/ListItemView;)V

    .line 23
    :goto_8e
    iget-boolean p3, p3, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    if-eqz p3, :cond_94

    move p3, v3

    goto :goto_96

    :cond_94
    const/16 p3, 0x8

    :goto_96
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/ListItemView;->setFavVisibility(I)V

    .line 24
    iget-object p3, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result p3

    if-eqz p3, :cond_a2

    goto :goto_a3

    :cond_a2
    const/4 v3, 0x4

    :goto_a3
    invoke-virtual {p1, v3}, Lcom/android/fileexplorer/view/ListItemView;->setCheckableVisibility(I)V

    .line 25
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ListItemView;->setChecked(Z)V

    return-void

    :cond_ae
    :goto_ae
    const-string p1, "FileInfoListChildDelegate"

    const-string p2, "onBindChildViewHolder ClassCastException"

    .line 26
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;IILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_48

    .line 39
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_48

    :cond_9
    const/4 p3, 0x0

    .line 40
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 41
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_48

    instance-of v0, p1, Lcom/android/fileexplorer/view/ListItemView;

    if-nez v0, :cond_1b

    goto :goto_48

    .line 42
    :cond_1b
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    const-string v0, "view_update_type_checkbox"

    .line 43
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_48

    .line 44
    iget-object p5, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p5}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result p5

    const/4 v0, 0x4

    if-eqz p5, :cond_30

    move p5, v0

    goto :goto_31

    :cond_30
    move p5, p3

    :goto_31
    invoke-virtual {p1, p5}, Lcom/android/fileexplorer/view/ListItemView;->setArrowVisibility(I)V

    .line 45
    iget-object p5, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p5}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result p5

    if-eqz p5, :cond_3d

    goto :goto_3e

    :cond_3d
    move p3, v0

    :goto_3e
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/ListItemView;->setCheckableVisibility(I)V

    .line 46
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ListItemView;->setChecked(Z)V

    :cond_48
    :goto_48
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V

    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IILjava/util/List;)V
    .registers 6

    .line 2
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;IILjava/util/List;)V

    return-void
.end method

.method public onCheckChange(Landroidx/recyclerview/widget/RecyclerView$b0;IZ)V
    .registers 5

    .line 1
    if-eqz p1, :cond_1c

    .line 3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 5
    check-cast p2, Lcom/android/fileexplorer/view/ListItemView;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

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
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/view/ListItemView;->setCheckableVisibility(I)V

    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 23
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    .line 25
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/ListItemView;->setChecked(Z)V

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileItemListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 34
    :goto_21
    return-void
.end method
