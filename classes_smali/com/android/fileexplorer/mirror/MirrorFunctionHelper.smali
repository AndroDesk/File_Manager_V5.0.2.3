.class public Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;
.super Ljava/lang/Object;
.source "MirrorFunctionHelper.java"


# static fields
.field public static final ARGS_PROJECTION:Ljava/lang/String; = "projection"

.field public static final ARGS_RESULT:Ljava/lang/String; = "result"

.field public static final ARGS_URIS:Ljava/lang/String; = "uris"

.field private static final TAG:Ljava/lang/String; = "MirrorFunctionHelper"


# direct methods
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "MirrorFunctionHelper"

    .line 12
    if-eqz v0, :cond_13

    .line 14
    const-string p0, "isPaste Now, return."

    .line 16
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return v1

    .line 20
    :cond_13
    if-nez p0, :cond_1b

    .line 22
    const-string p0, "data is null"

    .line 24
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v1

    .line 28
    :cond_1b
    if-nez p1, :cond_23

    .line 30
    const-string p0, "handlePaste destFileInfo is null"

    .line 32
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v1

    .line 36
    :cond_23
    if-nez p2, :cond_2b

    .line 38
    const-string p0, "handlePaste fileOperationManager is null"

    .line 40
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v1

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_37

    .line 50
    const-string p0, "handlePaste fileOperationManager ClipData.item size = 0."

    .line 52
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v1

    .line 56
    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    move v3, v1

    .line 62
    :goto_3d
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 65
    move-result v4

    .line 66
    if-ge v3, v4, :cond_7c

    .line 68
    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_53

    .line 78
    const-string v4, "handlePaste, uri.ToString is null"

    .line 80
    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto :goto_79

    .line 84
    :cond_53
    const-string v6, "handlePaste, uri.ToString = "

    .line 86
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 105
    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 115
    move-result-object v4

    .line 116
    if-nez v4, :cond_76

    .line 118
    goto :goto_79

    .line 119
    :cond_76
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_79
    add-int/lit8 v3, v3, 0x1

    .line 124
    goto :goto_3d

    .line 125
    :cond_7c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 128
    move-result v3

    .line 129
    const/4 v4, 0x1

    .line 130
    if-eqz v3, :cond_89

    .line 132
    const-string p0, "handlePaste, fileList is Empty"

    .line 134
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v4

    .line 138
    :cond_89
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 141
    move-result-object p0

    .line 142
    if-eqz p0, :cond_99

    .line 144
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 147
    move-result-object p0

    .line 148
    const-string v1, "mirror_inner"

    .line 150
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 153
    move-result v1

    .line 154
    :cond_99
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 161
    invoke-static {p1, p4, p3}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 168
    return v4
.end method

.method public static handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z
    .registers 6
    .param p3  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MirrorFunctionHelper"

    .line 4
    if-nez p0, :cond_b

    .line 6
    const-string p0, "handleInnerPaste: data is null"

    .line 8
    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    :cond_b
    if-nez p1, :cond_13

    .line 14
    const-string p0, "handleInnerPaste: fileOperationManager is null"

    .line 16
    invoke-static {v1, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-static {p0, p3, p2}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 27
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public static handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z
    .registers 11
    .param p4  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "MirrorFunctionHelper"

    .line 12
    if-eqz v0, :cond_13

    .line 14
    const-string p0, "isPaste Now, return."

    .line 16
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return v1

    .line 20
    :cond_13
    if-nez p0, :cond_1b

    .line 22
    const-string p0, "data is null"

    .line 24
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return v1

    .line 28
    :cond_1b
    if-nez p1, :cond_23

    .line 30
    const-string p0, "handlePaste destFileInfo is null"

    .line 32
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v1

    .line 36
    :cond_23
    if-nez p2, :cond_2b

    .line 38
    const-string p0, "handlePaste fileOperationManager is null"

    .line 40
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v1

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_37

    .line 50
    const-string p0, "handlePaste fileOperationManager ClipData.item size = 0."

    .line 52
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v1

    .line 56
    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :goto_3c
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 64
    move-result v3

    .line 65
    if-ge v1, v3, :cond_76

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 74
    move-result-object v4

    .line 75
    if-nez v4, :cond_4d

    .line 77
    goto :goto_73

    .line 78
    :cond_4d
    const-string v5, "handlePaste, uri.ToString = "

    .line 80
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_70

    .line 112
    goto :goto_73

    .line 113
    :cond_70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_73
    add-int/lit8 v1, v1, 0x1

    .line 118
    goto :goto_3c

    .line 119
    :cond_76
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 130
    move-result v1

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 134
    invoke-static {p1, p4, p3}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p2, p0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->copyOrMoveFiles(Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 141
    const/4 p0, 0x1

    .line 142
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_28

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_28

    .line 11
    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_28

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    new-instance v2, Ljava/io/File;

    .line 29
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 31
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_e

    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_28
    :goto_28
    return v0
.end method
