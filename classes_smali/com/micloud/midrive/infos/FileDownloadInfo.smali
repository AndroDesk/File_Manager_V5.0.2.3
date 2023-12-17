.class public Lcom/micloud/midrive/infos/FileDownloadInfo;
.super Ljava/lang/Object;
.source "FileDownloadInfo.java"

# interfaces
.implements Lcom/micloud/midrive/infos/TransferFileBaseInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FileDownloadInfo$Factory;
    }
.end annotation


# static fields
.field private static final JSON_BOOLEAN_IS_BACKGROUND:Ljava/lang/String; = "is_background"

.field private static final JSON_BOOLEAN_IS_CLOUD_DOCUMENT:Ljava/lang/String; = "file_type"

.field private static final JSON_LONG_SIZE:Ljava/lang/String; = "size"

.field private static final JSON_LONG_TIME:Ljava/lang/String; = "time"

.field private static final JSON_OBJ_ERR_INFO:Ljava/lang/String; = "err_info"

.field private static final JSON_OBJ_SHA1_TO_CHECK:Ljava/lang/String; = "sha1_to_check"

.field private static final JSON_STR_FILE_ID:Ljava/lang/String; = "fileId"

.field private static final JSON_STR_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final JSON_STR_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final JSON_STR_FILE_SHA1:Ljava/lang/String; = "sha1"

.field private static final JSON_STR_THUMB_URL:Ljava/lang/String; = "thumb_url"


# instance fields
.field public final fileId:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final filePath:Ljava/lang/String;

.field public final isBackground:Z

.field public final isCloudDocument:Z

.field public mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

.field public mTime:J

.field public final sha1:Ljava/lang/String;

.field public final sha1ToCheck:Ljava/lang/String;

.field public final size:J

.field public final thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    .line 12
    iput-boolean p5, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    .line 14
    iput-boolean p6, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    .line 16
    iput-wide p7, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    .line 18
    iput-wide p9, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    .line 20
    iput-object p11, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    .line 22
    iput-object p12, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 24
    iput-object p13, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "d_"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, "_"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static isKeyMatch(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "^d_.*_.*_.*$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method


# virtual methods
.method public getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 3
    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/infos/FileDownloadInfo;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    .line 3
    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    .line 3
    return-wide v0
.end method

.method public isBackground()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    .line 3
    return v0
.end method

.method public setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 3
    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    .line 3
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "fileId"

    .line 8
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "file_name"

    .line 15
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "file_path"

    .line 22
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "sha1"

    .line 29
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "file_type"

    .line 36
    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 41
    const-string v1, "is_background"

    .line 43
    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    const-string v1, "size"

    .line 50
    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v1, "time"

    .line 57
    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    const-string v1, "thumb_url"

    .line 64
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 71
    if-eqz v1, :cond_51

    .line 73
    const-string v2, "err_info"

    .line 75
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/ErrInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_51
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    .line 84
    if-eqz v1, :cond_5a

    .line 86
    const-string v2, "sha1_to_check"

    .line 88
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 91
    :cond_5a
    return-object v0

    .line 92
    :catch_5b
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 95
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "FileDownloadInfo{fileId=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", fileName=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    .line 18
    const-string v3, ", sha1=\'"

    .line 20
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    .line 25
    const-string v3, ", filePath=\'"

    .line 27
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    .line 32
    const-string v3, ", isCloudDocument="

    .line 34
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 37
    iget-boolean v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", isBackground="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-boolean v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", mTime="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v3, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    .line 59
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", size="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v3, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", thumbnailUrl=\'"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    .line 79
    const-string v3, ", mErrInfo="

    .line 81
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", sha1ToCheck=\'"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const/16 v1, 0x7d

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method
