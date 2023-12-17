.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegateVideo;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;
.source "FileInfoListChildDelegateVideo.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00d8

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 15

    check-cast p1, Lcom/android/fileexplorer/view/ListItemView;

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p2

    const v0, 0x7f080194

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    goto :goto_31

    :cond_15
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-wide v2, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ListItemView;->getFileIconView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f080128

    const/16 v7, 0x10e

    const p1, 0x7f0700ff

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v8

    iget v11, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->padding:I

    move v9, v11

    move v10, v11

    invoke-static/range {v1 .. v11}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIIIII)V

    :goto_31
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of p3, p1, Lcom/android/fileexplorer/view/VideoListItemView;

    if-nez p3, :cond_a

    return-void

    :cond_a
    check-cast p1, Lcom/android/fileexplorer/view/VideoListItemView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    sget-boolean p3, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz p3, :cond_1f

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/ListItemView;->setVideoTagVisible(Z)V

    goto :goto_28

    :cond_1f
    iget-wide p2, p2, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    invoke-static {p2, p3}, Lcom/android/fileexplorer/util/VideoUtils;->getFormattedVideoLength(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/VideoListItemView;->setDuration(Ljava/lang/CharSequence;)V

    :goto_28
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegateVideo;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method
