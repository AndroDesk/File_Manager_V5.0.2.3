.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegatePic;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;
.source "FileInfoChildDelegatePic.java"


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
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegatePic;->prefixContentDescription:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00a4

    return v0
.end method

.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 12

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/fileexplorer/view/GridItemView;

    .line 4
    iget-object v1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegatePic;->prefixContentDescription:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/FileInfo;->getDate()J

    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;->getPicLoadingSize()I

    .line 50
    move-result v6

    .line 51
    const v4, 0x7f0800ec

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x1

    .line 56
    move-object v3, p2

    .line 57
    invoke-virtual/range {v2 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByFileInfo(Lcom/android/fileexplorer/model/FileInfo;ILandroid/widget/ImageView;IZZ)V

    .line 60
    return-void
.end method
