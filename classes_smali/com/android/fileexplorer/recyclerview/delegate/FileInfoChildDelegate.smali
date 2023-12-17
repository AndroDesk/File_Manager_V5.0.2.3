.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.source "FileInfoChildDelegate.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "Lcom/android/fileexplorer/model/FileInfoGroup;",
        ">;",
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/OnCheckStateChangedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileInfoChildDelegate"


# instance fields
.field public mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public mPicLoadingSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00dc

    return v0
.end method

.method public getLayoutManger()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getPicLoadingSize()I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mPicLoadingSize:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->getLayoutManger()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1d

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mPicLoadingSize:I

    :cond_1d
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mPicLoadingSize:I

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 19

    move-object/from16 v1, p2

    const-string v0, "FileInfoChildDelegate loadFileIcon"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/fileexplorer/view/GridItemView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/model/FileInfo;->isDir()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v4, v1, v6}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    return-void

    :cond_42
    sget-boolean v2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v2, :cond_64

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    invoke-static {v1, v3, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    return-void

    :cond_64
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eq v6, v5, :cond_101

    iget-object v6, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    goto/16 :goto_101

    :cond_82
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eq v6, v5, :cond_cf

    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_94

    goto :goto_cf

    :cond_94
    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->getViewType(I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_c0

    const/16 v6, 0xe

    if-eq v5, v6, :cond_a0

    goto :goto_cb

    :cond_a0
    sget-boolean v5, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v5, :cond_b4

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v1

    invoke-static {v2, v3, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    return-void

    :cond_b4
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    goto :goto_cb

    :cond_c0
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    :goto_cb
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_cf
    :goto_cf
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isHorizontalDoc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    const-string v5, "264X168"

    goto :goto_da

    :cond_d8
    const-string v5, "186X264"

    :goto_da
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-static {v2}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    move-result v0

    goto :goto_f5

    :cond_f1
    invoke-static {v2, v3, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    move-result v0

    :goto_f5
    move v4, v0

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    return-void

    :cond_101
    :goto_101
    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    iget-object v9, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x7f0801af

    const/16 v15, 0x10e

    invoke-static/range {v9 .. v15}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRoundWithPadding(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 8

    const-string p3, "FileInfoChildDelegate onBindChildViewHolder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_72

    instance-of v0, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-nez v0, :cond_18

    goto :goto_72

    :cond_18
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    iget-object v0, p3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    iget-wide v0, p3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_43

    const v0, 0x7f0f0014

    iget v1, p3, Lcom/android/fileexplorer/model/FileInfo;->count:I

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_43
    iget-wide v0, p3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    :goto_49
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileSource(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_56

    move v0, v2

    goto :goto_57

    :cond_56
    const/4 v0, 0x4

    :goto_57
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    iget-boolean p2, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz p2, :cond_66

    goto :goto_68

    :cond_66
    const/16 v2, 0x8

    :goto_68
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/GridItemView;->setFavVisibility(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0, p1, p3}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void

    :cond_72
    :goto_72
    const-string p1, "FileInfoChildDelegate"

    const-string p2, "error view type"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;IILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p5, :cond_41

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_41

    :cond_9
    const/4 p3, 0x0

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_3a

    instance-of v0, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-nez v0, :cond_1b

    goto :goto_3a

    :cond_1b
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    const-string v0, "view_update_type_checkbox"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_39

    iget-object p5, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p5}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result p5

    if-eqz p5, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p3, 0x4

    :goto_2f
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    const-string p1, "FileInfoChildDelegate"

    const-string p2, "payloads error view type"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IILjava/util/List;)V
    .registers 6

    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;IILjava/util/List;)V

    return-void
.end method

.method public onCheckChange(Landroidx/recyclerview/widget/RecyclerView$b0;IZ)V
    .registers 5

    if-eqz p1, :cond_1c

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p2, Lcom/android/fileexplorer/view/GridItemView;

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

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
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_21
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method
