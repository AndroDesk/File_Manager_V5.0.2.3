.class public Lcom/micloud/midrive/infos/FileUploadInfo;
.super Ljava/lang/Object;
.source "FileUploadInfo.java"

# interfaces
.implements Lcom/micloud/midrive/infos/TransferFileBaseInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FileUploadInfo$Factory;
    }
.end annotation


# static fields
.field private static final JSON_BOOLEAN_IS_BACKGROUND:Ljava/lang/String; = "is_background"

.field private static final JSON_LONG_SIZE:Ljava/lang/String; = "size"

.field private static final JSON_LONG_TIME:Ljava/lang/String; = "time"

.field private static final JSON_OBJ_ERR_INFO:Ljava/lang/String; = "err_info"

.field private static final JSON_OBJ_FILE_ITEM_INFO:Ljava/lang/String; = "file_item_info"

.field private static final JSON_STRING_RECORD_ID:Ljava/lang/String; = "record_id"

.field private static final JSON_STR_CHANNEL:Ljava/lang/String; = "channel"

.field private static final JSON_STR_FAILED_MOVE_PATH:Ljava/lang/String; = "failed_move_path"

.field private static final JSON_STR_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final JSON_STR_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final JSON_STR_PARENT_ID:Ljava/lang/String; = "parent_id"

.field private static final UPLOAD_CHANNEL:Ljava/lang/String;


# instance fields
.field public final channel:Ljava/lang/String;

.field private failedMovePath:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final filePath:Ljava/lang/String;

.field public final isBackground:Z

.field private mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

.field private mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

.field private mMimeType:Ljava/lang/String;

.field private mTime:J

.field public final parentId:Ljava/lang/String;

.field public final recordId:Ljava/lang/String;

.field public final size:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/micloud/midrive/constants/CommonConstants;->CURRENT_CHANNEL:Ljava/lang/String;

    sput-object v0, Lcom/micloud/midrive/infos/FileUploadInfo;->UPLOAD_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/micloud/midrive/infos/FileItemInfo;Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    iput-wide p7, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    iput-boolean p9, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    sget-object p1, Lcom/micloud/midrive/infos/FileUploadInfo;->UPLOAD_CHANNEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->channel:Ljava/lang/String;

    iput-object p10, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    iput-object p11, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-void
.end method

.method public static generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u_"

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

    const-string v0, "^u_.*_.*_.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createItemInfo(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/micloud/midrive/infos/FileItemInfo$Factory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/infos/FileItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    return-void
.end method

.method public getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-object v0
.end method

.method public getFailedMovePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileItemInfo()Lcom/micloud/midrive/infos/FileItemInfo;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/infos/FileUploadInfo;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/micloud/midrive/infos/FileItemInfo;->sha1:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    return-wide v0
.end method

.method public isBackground()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    return v0
.end method

.method public setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    return-void
.end method

.method public setFailedMovePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_path"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "failed_move_path"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_name"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parent_id"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "record_id"

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "is_background"

    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "size"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    if-eqz v1, :cond_51

    const-string v2, "file_item_info"

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileItemInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_51
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    if-eqz v1, :cond_5e

    const-string v2, "err_info"

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/ErrInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_5f

    :cond_5e
    return-object v0

    :catch_5f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "FileUploadInfo{fileName=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    const-string v3, ", failedMovePath=\'"

    invoke-static {v0, v2, v1, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    const-string v3, ", isBackground=\'"

    invoke-static {v0, v2, v1, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sha1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getSha1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mErrInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
