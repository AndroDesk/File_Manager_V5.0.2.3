.class Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;
.super Ljava/lang/Object;
.source "MirrorInformationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->asyncGetSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private size:J

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private getSize(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 9

    .line 1
    const-string v0, "/"

    .line 3
    const-string v1, "get file size failed"

    .line 5
    const-string v2, "InformationDialog"

    .line 7
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 9
    invoke-static {v3}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    if-nez p1, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    iget v3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x0

    .line 27
    if-ne v3, v4, :cond_84

    .line 29
    :try_start_1c
    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 31
    if-eqz v3, :cond_6a

    .line 33
    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_30

    .line 41
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 43
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 45
    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 48
    goto :goto_47

    .line 49
    :cond_30
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 71
    move-object v0, v3

    .line 72
    :goto_47
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_4e

    .line 78
    return-void

    .line 79
    :cond_4e
    array-length v0, p1

    .line 80
    :goto_4f
    if-ge v5, v0, :cond_103

    .line 82
    aget-object v3, p1, v5

    .line 84
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 86
    invoke-static {v4}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_60

    .line 96
    return-void

    .line 97
    :cond_60
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;

    .line 100
    move-result-object v3

    .line 101
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 104
    add-int/lit8 v5, v5, 0x1

    .line 106
    goto :goto_4f

    .line 107
    :cond_6a
    iget-wide v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 109
    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 111
    add-long/2addr v3, v5

    .line 112
    iput-wide v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 114
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 116
    invoke-static {p1, v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V
    :try_end_76
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_76} :catch_7e
    .catch Ljcifs/smb/SmbException; {:try_start_1c .. :try_end_76} :catch_78

    .line 119
    goto/16 :goto_103

    .line 121
    :catch_78
    move-exception p1

    .line 122
    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    goto/16 :goto_103

    .line 127
    :catch_7e
    move-exception p1

    .line 128
    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    goto/16 :goto_103

    .line 133
    :cond_84
    if-nez v3, :cond_c5

    .line 135
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 137
    if-eqz v0, :cond_b8

    .line 139
    new-instance v0, Ljava/io/File;

    .line 141
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 143
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 149
    move-result-object p1

    .line 150
    if-nez p1, :cond_98

    .line 152
    return-void

    .line 153
    :cond_98
    array-length v0, p1

    .line 154
    :goto_99
    if-ge v5, v0, :cond_103

    .line 156
    aget-object v1, p1, v5

    .line 158
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 160
    invoke-static {v2}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_aa

    .line 170
    return-void

    .line 171
    :cond_aa
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 178
    move-result-object v1

    .line 179
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 182
    add-int/lit8 v5, v5, 0x1

    .line 184
    goto :goto_99

    .line 185
    :cond_b8
    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 187
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 189
    add-long/2addr v0, v2

    .line 190
    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 192
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 194
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V

    .line 197
    goto :goto_103

    .line 198
    :cond_c5
    const/4 v0, 0x4

    .line 199
    if-ne v3, v0, :cond_103

    .line 201
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 203
    if-eqz v0, :cond_f7

    .line 205
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 208
    move-result-object v0

    .line 209
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 214
    move-result-object p1

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object p1

    .line 219
    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_103

    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 231
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 233
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_f3

    .line 243
    return-void

    .line 244
    :cond_f3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 247
    goto :goto_da

    .line 248
    :cond_f7
    iget-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 250
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 252
    add-long/2addr v0, v2

    .line 253
    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 255
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 257
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;J)V

    .line 260
    :cond_103
    :goto_103
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->size:J

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$4;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 14
    return-void
.end method
