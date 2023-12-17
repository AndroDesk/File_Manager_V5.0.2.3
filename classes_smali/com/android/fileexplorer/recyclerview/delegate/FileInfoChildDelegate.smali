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
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 6
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    return-object v0
.end method

.method public getPicLoadingSize()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mPicLoadingSize:I

    .line 3
    if-nez v0, :cond_1d

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->getLayoutManger()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1d

    .line 11
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    if-eqz v1, :cond_1d

    .line 15
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 24
    move-result v0

    .line 25
    add-int/lit8 v0, v0, 0x2

    .line 27
    div-int/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mPicLoadingSize:I

    .line 30
    :cond_1d
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mPicLoadingSize:I

    .line 32
    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 19

    .line 1
    move-object/from16 v1, p2

    .line 3
    const-string v0, "FileInfoChildDelegate loadFileIcon"

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    move-object/from16 v0, p1

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/GridItemView;

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/android/fileexplorer/model/FileInfo;->isDir()Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_42

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v5

    .line 32
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 34
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    move-result-object v6

    .line 40
    invoke-static {v6}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getViewMode(Ljava/lang/String;)I

    .line 43
    move-result v6

    .line 44
    invoke-static {v5, v4, v1, v6}, Lcom/android/fileexplorer/model/FileIconHelper;->getFolderID(Landroid/content/Context;ZZI)I

    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    .line 66
    return-void

    .line 67
    :cond_42
    sget-boolean v2, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 69
    if-eqz v2, :cond_64

    .line 71
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_64

    .line 79
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 81
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v3, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v2, v1, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 100
    return-void

    .line 101
    :cond_64
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    iget-object v5, v1, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 109
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 112
    move-result v5

    .line 113
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 115
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 118
    move-result v6

    .line 119
    if-eq v6, v5, :cond_101

    .line 121
    iget-object v6, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 123
    invoke-static {v6}, Lcom/android/fileexplorer/util/MimeUtils;->isVideo(Ljava/lang/String;)Z

    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_82

    .line 129
    goto/16 :goto_101

    .line 131
    :cond_82
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    .line 134
    sget-object v6, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 136
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 139
    move-result v6

    .line 140
    if-eq v6, v5, :cond_cf

    .line 142
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isDoc(Ljava/lang/String;)Z

    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_94

    .line 148
    goto :goto_cf

    .line 149
    :cond_94
    invoke-static {v5}, Lcom/android/fileexplorer/apptag/FileUtils;->getViewType(I)I

    .line 152
    move-result v5

    .line 153
    const/4 v6, 0x4

    .line 154
    if-eq v5, v6, :cond_c0

    .line 156
    const/16 v6, 0xe

    .line 158
    if-eq v5, v6, :cond_a0

    .line 160
    goto :goto_cb

    .line 161
    :cond_a0
    sget-boolean v5, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 163
    if-eqz v5, :cond_b4

    .line 165
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 168
    move-result-object v1

    .line 169
    invoke-static {v2, v3, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 172
    move-result v2

    .line 173
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v2, v0}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 180
    return-void

    .line 181
    :cond_b4
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    .line 192
    goto :goto_cb

    .line 193
    :cond_c0
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/fileexplorer/model/FileIconHelper;->loadFileIntoImg(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;ZZ)V

    .line 204
    :goto_cb
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 207
    return-void

    .line 208
    :cond_cf
    :goto_cf
    invoke-static {v2}, Lcom/android/fileexplorer/util/MimeUtils;->isHorizontalDoc(Ljava/lang/String;)Z

    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_d8

    .line 214
    const-string v5, "264X168"

    .line 216
    goto :goto_da

    .line 217
    :cond_d8
    const-string v5, "186X264"

    .line 219
    :goto_da
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_f1

    .line 237
    invoke-static {v2}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 240
    move-result v0

    .line 241
    goto :goto_f5

    .line 242
    :cond_f1
    invoke-static {v2, v3, v4}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 245
    move-result v0

    .line 246
    :goto_f5
    move v4, v0

    .line 247
    const/4 v8, 0x0

    .line 248
    move-object v0, v6

    .line 249
    move-object/from16 v1, p2

    .line 251
    move-object v2, v5

    .line 252
    move-object v3, v7

    .line 253
    move-object v5, v8

    .line 254
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    .line 257
    return-void

    .line 258
    :cond_101
    :goto_101
    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    .line 261
    iget-object v9, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 263
    iget-wide v10, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 265
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 268
    move-result-object v12

    .line 269
    const/4 v13, 0x0

    .line 270
    const v14, 0x7f0801af

    .line 273
    const/16 v15, 0x10e

    .line 275
    invoke-static/range {v9 .. v15}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRoundWithPadding(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;II)V

    .line 278
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 8

    const-string p3, "FileInfoChildDelegate onBindChildViewHolder"

    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/fileexplorer/model/FileInfo;

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_72

    instance-of v0, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-nez v0, :cond_18

    goto :goto_72

    .line 6
    :cond_18
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 7
    sget-object v0, Lcom/android/cloud/util/CloudFileUtils$FileCloudState;->NONE:Lcom/android/cloud/util/CloudFileUtils$FileCloudState;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setCloudState(Lcom/android/cloud/util/CloudFileUtils$FileCloudState;)V

    .line 8
    iget-object v0, p3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setFileName(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileNameView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 10
    iget-wide v0, p3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/DateUtils;->formatFileTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/GridItemView;->setSize(Ljava/lang/String;)V

    .line 11
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

    .line 12
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

    .line 13
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    .line 14
    iget-boolean p2, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz p2, :cond_66

    goto :goto_68

    :cond_66
    const/16 v2, 0x8

    :goto_68
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/view/GridItemView;->setFavVisibility(I)V

    .line 15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 16
    invoke-virtual {p0, p1, p3}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    return-void

    :cond_72
    :goto_72
    const-string p1, "FileInfoChildDelegate"

    const-string p2, "error view type"

    .line 17
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

    .line 18
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_41

    :cond_9
    const/4 p3, 0x0

    .line 19
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_3a

    instance-of v0, p1, Lcom/android/fileexplorer/view/GridItemView;

    if-nez v0, :cond_1b

    goto :goto_3a

    .line 21
    :cond_1b
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    const-string v0, "view_update_type_checkbox"

    .line 22
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_39

    .line 23
    iget-object p5, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {p5}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->isInSelectionMode()Z

    move-result p5

    if-eqz p5, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p3, 0x4

    :goto_2f
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/GridItemView;->setCheckableVisibility(I)V

    .line 24
    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;->isChildChecked(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setChecked(Z)V

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    const-string p1, "FileInfoChildDelegate"

    const-string p2, "payloads error view type"

    .line 25
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IILjava/util/List;)V
    .registers 6

    .line 2
    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual/range {p0 .. p5}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;IILjava/util/List;)V

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
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

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
    iget-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 34
    :goto_21
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    return-void
.end method
