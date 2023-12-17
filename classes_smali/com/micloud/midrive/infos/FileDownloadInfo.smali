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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lcom/micloud/midrive/infos/ErrInfo;Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    iput-boolean p6, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    iput-wide p7, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    iput-wide p9, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    iput-object p11, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    iput-object p12, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    iput-object p13, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    return-void
.end method

.method public static generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isKeyMatch(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^d_.*_.*_.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/infos/FileDownloadInfo;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    return-wide v0
.end method

.method public isBackground()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    return v0
.end method

.method public setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fileId"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_name"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_path"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha1"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_type"

    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_background"

    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "size"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "time"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "thumb_url"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    if-eqz v1, :cond_51

    const-string v2, "err_info"

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/ErrInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_51
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    if-eqz v1, :cond_5a

    const-string v2, "sha1_to_check"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b

    :cond_5a
    return-object v0

    :catch_5b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "FileDownloadInfo{fileId=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", fileName=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileName:Ljava/lang/String;

    const-string v3, ", sha1=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1:Ljava/lang/String;

    const-string v3, ", filePath=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->filePath:Ljava/lang/String;

    const-string v3, ", isCloudDocument="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isCloudDocument:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->isBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->size:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->thumbnailUrl:Ljava/lang/String;

    const-string v3, ", mErrInfo="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sha1ToCheck=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->sha1ToCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
