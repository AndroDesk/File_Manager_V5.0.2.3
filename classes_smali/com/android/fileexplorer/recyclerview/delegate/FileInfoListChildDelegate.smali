.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.source "FileInfoListChildDelegate.java"

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


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

.field public padding:I


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
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->padding:I

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 15
    return-void
.end method

.method private loadDocIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    .line 3
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1b

    .line 23
    invoke-static {p2}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 26
    move-result p2

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-static {p2}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIcon(Ljava/lang/String;)I

    .line 31
    move-result p2

    .line 32
    :goto_1f
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00d6

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 16

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/fileexplorer/view/ListItemView;

    .line 4
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getViewType(I)I

    .line 13
    move-result v1

    .line 14
    iget-object v3, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 16
    iget-boolean v2, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 18
    if-eqz v2, :cond_40

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p1

    .line 32
    const/4 v2, 0x1

    .line 33
    iget-boolean p2, p2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 35
    sget-object v3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode(Ljava/lang/String;)I

    .line 44
    move-result v3

    .line 45
    invoke-static {p1, v2, p2, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 64
    return-void

    .line 65
    :cond_40
    const/4 p1, 0x4

    .line 66
    if-eq v1, p1, :cond_58

    .line 68
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 75
    move-result-object p2

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-static {p1, v1, v1}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 80
    move-result p1

    .line 81
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 88
    goto :goto_7b

    .line 89
    :cond_58
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 92
    move-result-object v2

    .line 93
    iget-wide v4, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 95
    const v6, 0x7f080128

    .line 98
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 101
    move-result-object v7

    .line 102
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/android/fileexplorer/util/DisplayUtil;->getDefaultIconSize(Landroid/content/Context;)I

    .line 109
    move-result v8

    .line 110
    const p1, 0x7f07029f

    .line 113
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 116
    move-result v9

    .line 117
    iget v12, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->padding:I

    .line 119
    move v10, v12

    .line 120
    move v11, v12

    .line 121
    invoke-virtual/range {v2 .. v12}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;IIIII)V

    .line 124
    :goto_7b
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 11

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/model/FileInfo;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_ab

    instance-of v0, p1, Lcom/android/fileexplorer/view/ListItemView;

    if-nez v0, :cond_14

    goto/16 :goto_ab

    .line 5
    :cond_14
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/PadWidgetHelper;->isPadWidgetActivity()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    const v0, 0x7f0707f9

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    :cond_2b
    iget-object v0, p3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ListItemView;->setFileName(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 10
    iget-boolean v0, p3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_45

    const v0, 0x7f0f0014

    .line 11
    iget v2, p3, Lcom/android/fileexplorer/model/FileInfo;->count:I

    invoke-static {v0, v2}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 12
    :cond_45
    iget-wide v2, p3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    const v2, 0x7f11012a

    .line 13
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-wide v3, p3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-boolean v5, p3, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-static {v3, v4, v5}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 16
    invoke-static {v0, v2, v3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 17
    :cond_65
    invoke-static {v3, v2, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_69
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ListItemView;->setFileSummary(Ljava/lang/CharSequence;)V

    .line 19
    iget-boolean v0, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz v0, :cond_72

    move v0, v1

    goto :goto_74

    :cond_72
    const/16 v0, 0x8

    :goto_74
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/ListItemView;->setFavVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_81

    :cond_80
    const/4 v1, 0x4

    :goto_81
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/ListItemView;->setCheckableVisibility(I)V

    .line 21
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ListItemView;->setChecked(Z)V

    .line 22
    invoke-virtual {p0, p1, p3}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 23
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_aa

    const p2, 0x7f07024a

    .line 24
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_aa
    return-void

    :cond_ab
    :goto_ab
    const-string p1, "FileInfoListChildDelegate"

    const-string p2, "onBindChildViewHolder ClassCastException"

    .line 25
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

    .line 38
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_41

    :cond_9
    const/4 p3, 0x0

    .line 39
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 40
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_3a

    instance-of v0, p1, Lcom/android/fileexplorer/view/ListItemView;

    if-nez v0, :cond_1b

    goto :goto_3a

    .line 41
    :cond_1b
    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    const-string v0, "view_update_type_checkbox"

    .line 42
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_39

    .line 43
    iget-object p5, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p5}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result p5

    if-eqz p5, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p3, 0x4

    :goto_2f
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/ListItemView;->setCheckableVisibility(I)V

    .line 44
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ListItemView;->setChecked(Z)V

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    const-string p1, "FileInfoListChildDelegate"

    const-string p2, "payloads error view type"

    .line 45
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IILjava/util/List;)V
    .registers 6

    .line 2
    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;IILjava/util/List;)V

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
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

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
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 34
    :goto_21
    return-void
.end method
