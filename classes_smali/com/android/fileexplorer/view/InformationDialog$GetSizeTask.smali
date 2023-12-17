.class Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;
.super Ljava/lang/Object;
.source "InformationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/InformationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSizeTask"
.end annotation


# instance fields
.field public fileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private handler:Landroid/os/Handler;

.field public isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private size:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->handler:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 10
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
    iget-object v3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    if-nez p1, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    iget v3, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x0

    .line 23
    if-ne v3, v4, :cond_7a

    .line 25
    :try_start_18
    iget-boolean v3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 27
    if-eqz v3, :cond_62

    .line 29
    iget-object v3, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2c

    .line 37
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 39
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 41
    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 44
    goto :goto_43

    .line 45
    :cond_2c
    new-instance v3, Ljcifs/smb/SmbFile;

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v3, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 67
    move-object v0, v3

    .line 68
    :goto_43
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_4a

    .line 74
    return-void

    .line 75
    :cond_4a
    array-length v0, p1

    .line 76
    :goto_4b
    if-ge v5, v0, :cond_f1

    .line 78
    aget-object v3, p1, v5

    .line 80
    iget-object v4, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_58

    .line 88
    return-void

    .line 89
    :cond_58
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;

    .line 92
    move-result-object v3

    .line 93
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 98
    goto :goto_4b

    .line 99
    :cond_62
    iget-wide v3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 101
    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 103
    add-long/2addr v3, v5

    .line 104
    iput-wide v3, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 106
    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->onSize(J)V
    :try_end_6c
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_6c} :catch_74
    .catch Ljcifs/smb/SmbException; {:try_start_18 .. :try_end_6c} :catch_6e

    .line 109
    goto/16 :goto_f1

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    goto/16 :goto_f1

    .line 117
    :catch_74
    move-exception p1

    .line 118
    invoke-static {v2, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    goto/16 :goto_f1

    .line 123
    :cond_7a
    if-nez v3, :cond_b9

    .line 125
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 127
    if-eqz v0, :cond_ae

    .line 129
    instance-of v0, p1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 131
    if-nez v0, :cond_ae

    .line 133
    new-instance v0, Ljava/io/File;

    .line 135
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 137
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 143
    move-result-object p1

    .line 144
    if-nez p1, :cond_92

    .line 146
    return-void

    .line 147
    :cond_92
    array-length v0, p1

    .line 148
    :goto_93
    if-ge v5, v0, :cond_f1

    .line 150
    aget-object v1, p1, v5

    .line 152
    iget-object v2, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_a0

    .line 160
    return-void

    .line 161
    :cond_a0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 168
    move-result-object v1

    .line 169
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 174
    goto :goto_93

    .line 175
    :cond_ae
    iget-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 177
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 179
    add-long/2addr v0, v2

    .line 180
    iput-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->onSize(J)V

    .line 185
    goto :goto_f1

    .line 186
    :cond_b9
    const/4 v0, 0x4

    .line 187
    if-ne v3, v0, :cond_f1

    .line 189
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 191
    if-eqz v0, :cond_e7

    .line 193
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 196
    move-result-object v0

    .line 197
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mtp/MTPManager;->listFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 202
    move-result-object p1

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object p1

    .line 207
    :goto_ce
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_f1

    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 219
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_e3

    .line 227
    return-void

    .line 228
    :cond_e3
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 231
    goto :goto_ce

    .line 232
    :cond_e7
    iget-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 234
    iget-wide v2, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 236
    add-long/2addr v0, v2

    .line 237
    iput-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 239
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->onSize(J)V

    .line 242
    :cond_f1
    :goto_f1
    return-void
.end method

.method private onSize(J)V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 6
    const/16 v1, 0x64

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v2, "SIZE"

    .line 17
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->handler:Landroid/os/Handler;

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->size:J

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/InformationDialog$GetSizeTask;->getSize(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 10
    return-void
.end method
