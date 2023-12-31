.class public Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegateVideo;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;
.source "FileItemChildDelegateVideo.java"


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00df

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 21

    .line 1
    move-object/from16 v0, p2

    .line 3
    move-object/from16 v1, p1

    .line 5
    check-cast v1, Lcom/android/fileexplorer/view/GridItemView;

    .line 7
    instance-of v2, v0, Lcom/android/cloud/bean/CloudFileItem;

    .line 9
    if-eqz v2, :cond_1d

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 14
    move-result-object v3

    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Lcom/android/cloud/bean/CloudFileItem;

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 22
    move-result-object v6

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x1

    .line 25
    const/4 v9, 0x1

    .line 26
    invoke-virtual/range {v3 .. v9}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByCloudFileItem(Lcom/android/cloud/bean/CloudFileItem;ILandroid/widget/ImageView;Lcom/android/cloud/bean/TransferState;ZZ)V

    .line 29
    goto :goto_38

    .line 30
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 33
    move-result-object v10

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 41
    move-result-wide v11

    .line 42
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 45
    move-result-object v13

    .line 46
    const/4 v14, 0x0

    .line 47
    const v15, 0x7f0801af

    .line 50
    const/16 v16, 0x10e

    .line 52
    const/16 v17, 0x0

    .line 54
    invoke-static/range {v10 .. v17}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 57
    :goto_38
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V
    .registers 5

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V

    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegateVideo;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/apptag/FileItemGroup;II)V

    return-void
.end method
