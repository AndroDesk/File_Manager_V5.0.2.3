.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegatePpt;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;
.source "FileInfoChildDelegatePpt.java"


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00d3

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 10

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 3
    iget-object v0, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1f

    .line 27
    invoke-static {v0}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 30
    move-result p1

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-static {v0}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIcon(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    :goto_23
    move v5, p1

    .line 37
    const/4 v6, 0x0

    .line 38
    const-string v3, "264X168"

    .line 40
    move-object v2, p2

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    .line 44
    return-void
.end method
