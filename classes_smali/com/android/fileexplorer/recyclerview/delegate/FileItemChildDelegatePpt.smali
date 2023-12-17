.class public Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegatePpt;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;
.source "FileItemChildDelegatePpt.java"


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

    const v0, 0x7f0d00d3

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 10

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_25

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 36
    move-result p1

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    invoke-static {v0}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIcon(Ljava/lang/String;)I

    .line 41
    move-result p1

    .line 42
    :goto_29
    move v5, p1

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v3, "264X168"

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    .line 49
    return-void
.end method
