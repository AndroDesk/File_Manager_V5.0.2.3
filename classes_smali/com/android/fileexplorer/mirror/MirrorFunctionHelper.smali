.class public Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;
.super Ljava/lang/Object;
.source "MirrorFunctionHelper.java"


# static fields
.field public static final ARGS_PROJECTION:Ljava/lang/String; = "projection"

.field public static final ARGS_RESULT:Ljava/lang/String; = "result"

.field public static final ARGS_URIS:Ljava/lang/String; = "uris"

.field private static final TAG:Ljava/lang/String; = "MirrorFunctionHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleDrop(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z
    .registers 12
    .param p4  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MirrorFunctionHelper"

    if-eqz v0, :cond_13

    const-string p0, "isPaste Now, return."

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    if-nez p0, :cond_1b

    const-string p0, "data is null"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    if-nez p1, :cond_23

    const-string p0, "handlePaste destFileInfo is null"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    if-nez p2, :cond_2b

    const-string p0, "handlePaste fileOperationManager is null"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2b
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_37

    const-string p0, "handlePaste fileOperationManager ClipData.item size = 0."

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_3d
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_7c

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_53

    const-string v4, "handlePaste, uri.ToString is null"

    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :cond_53
    const-string v6, "handlePaste, uri.ToString = "

    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v4

    if-nez v4, :cond_76

    goto :goto_79

    :cond_76
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_7c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_89

    const-string p0, "handlePaste, fileList is Empty"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_89
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_99

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v1, "mirror_inner"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_99
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-static {p1, p4, p3}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    return v4
.end method

.method public static handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z
    .registers 6
    .param p3  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "MirrorFunctionHelper"

    if-nez p0, :cond_b

    const-string p0, "handleInnerPaste: data is null"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    if-nez p1, :cond_13

    const-string p0, "handleInnerPaste: fileOperationManager is null"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-static {p0, p3, p2}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z
    .registers 11
    .param p4  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MirrorFunctionHelper"

    if-eqz v0, :cond_13

    const-string p0, "isPaste Now, return."

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    if-nez p0, :cond_1b

    const-string p0, "data is null"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    if-nez p1, :cond_23

    const-string p0, "handlePaste destFileInfo is null"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    if-nez p2, :cond_2b

    const-string p0, "handlePaste fileOperationManager is null"

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2b
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_37

    const-string p0, "handlePaste fileOperationManager ClipData.item size = 0."

    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3c
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_76

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4d

    goto :goto_73

    :cond_4d
    const-string v5, "handlePaste, uri.ToString = "

    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    if-nez v3, :cond_70

    goto :goto_73

    :cond_70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_76
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-static {p1, p4, p3}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static hasDir(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_28

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_28
    :goto_28
    return v0
.end method
