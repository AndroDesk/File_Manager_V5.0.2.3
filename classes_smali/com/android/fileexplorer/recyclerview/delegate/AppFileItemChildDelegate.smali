.class public Lcom/android/fileexplorer/recyclerview/delegate/AppFileItemChildDelegate;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;
.source "AppFileItemChildDelegate.java"


# instance fields
.field private mVideoTag:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/delegate/FileItemChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;Z)V

    return-void
.end method


# virtual methods
.method public loadFileIcon(Landroid/view/View;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 12

    .line 1
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2a

    .line 16
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {p2, v1, v2}, Lcom/android/fileexplorer/model/FileIconUtils;->getFileIconId(Ljava/lang/String;ZZ)I

    .line 32
    move-result p2

    .line 33
    check-cast p1, Lcom/android/fileexplorer/view/GridItemView;

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p2, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDefaultDrawable(ILandroid/widget/ImageView;)V

    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 58
    move-result-wide v4

    .line 59
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/android/fileexplorer/view/GridItemView;

    .line 62
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/GridItemView;->getFileIconView()Landroid/widget/ImageView;

    .line 65
    move-result-object v6

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    invoke-virtual/range {v2 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconInner(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    invoke-static {p2}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    const-string v0, "video/"

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    move-result p2

    .line 89
    const v0, 0x7f0a0489

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/ImageView;

    .line 98
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/delegate/AppFileItemChildDelegate;->mVideoTag:Landroid/widget/ImageView;

    .line 100
    if-eqz p1, :cond_6d

    .line 102
    if-eqz p2, :cond_68

    .line 104
    goto :goto_6a

    .line 105
    :cond_68
    const/16 v1, 0x8

    .line 107
    :goto_6a
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :cond_6d
    return-void
.end method
