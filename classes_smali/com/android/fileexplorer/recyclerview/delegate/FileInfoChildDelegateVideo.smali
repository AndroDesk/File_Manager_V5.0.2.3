.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateVideo;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;
.source "FileInfoChildDelegateVideo.java"


# instance fields
.field private prefixContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 4
    const p1, 0x7f110072

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateVideo;->prefixContentDescription:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00a5

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 11

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/GridVideoItemView;

    .line 3
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    iget-wide v1, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->getPicLoadingSize()I

    .line 14
    move-result v6

    .line 15
    const/4 v4, 0x0

    .line 16
    const v5, 0x7f0800ec

    .line 19
    const/4 v7, 0x1

    .line 20
    invoke-static/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 23
    return-void
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V
    .registers 7

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_4d

    instance-of p3, p1, Lcom/android/fileexplorer/view/GridVideoItemView;

    if-eqz p3, :cond_4d

    .line 4
    check-cast p1, Lcom/android/fileexplorer/view/GridVideoItemView;

    .line 5
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    sget-boolean p3, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz p3, :cond_23

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridVideoItemView;->setDurationVisible(Z)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/GridItemView;->setVideoTagVisible(Z)V

    goto :goto_4d

    .line 9
    :cond_23
    iget-wide p3, p2, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    invoke-static {p3, p4}, Lcom/android/fileexplorer/util/VideoUtils;->getFormattedVideoLength(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/view/GridVideoItemView;->setDuration(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateVideo;->prefixContentDescription:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/FileInfo;->getDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public bridge synthetic onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .registers 5

    .line 1
    check-cast p2, Lcom/android/fileexplorer/model/FileInfoGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegateVideo;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/model/FileInfoGroup;II)V

    return-void
.end method
