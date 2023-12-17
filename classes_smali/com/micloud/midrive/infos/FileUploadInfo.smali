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

    .line 1
    sget-object v0, Lcom/micloud/midrive/constants/CommonConstants;->CURRENT_CHANNEL:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/micloud/midrive/infos/FileUploadInfo;->UPLOAD_CHANNEL:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/micloud/midrive/infos/FileItemInfo;Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    .line 12
    iput-wide p5, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    .line 14
    iput-wide p7, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    .line 16
    iput-boolean p9, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    .line 18
    sget-object p1, Lcom/micloud/midrive/infos/FileUploadInfo;->UPLOAD_CHANNEL:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->channel:Ljava/lang/String;

    .line 22
    iput-object p10, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    .line 24
    iput-object p11, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

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
    const-string v1, "u_"

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
    const-string v0, "^u_.*_.*_.*$"

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
.method public createItemInfo(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/micloud/midrive/infos/FileItemInfo$Factory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/infos/FileItemInfo;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    .line 9
    return-void
.end method

.method public getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 3
    return-object v0
.end method

.method public getFailedMovePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileItemInfo()Lcom/micloud/midrive/infos/FileItemInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/infos/FileUploadInfo;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mMimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Lcom/micloud/midrive/infos/FileItemInfo;->sha1:Ljava/lang/String;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    .line 3
    return-wide v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    .line 3
    return-wide v0
.end method

.method public isBackground()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    .line 3
    return v0
.end method

.method public setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 3
    return-void
.end method

.method public setFailedMovePath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mMimeType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

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
    const-string v1, "file_path"

    .line 8
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "failed_move_path"

    .line 15
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "file_name"

    .line 22
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "parent_id"

    .line 29
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "channel"

    .line 36
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->channel:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "record_id"

    .line 43
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "time"

    .line 50
    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v1, "is_background"

    .line 57
    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 62
    const-string v1, "size"

    .line 64
    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mFileItemInfo:Lcom/micloud/midrive/infos/FileItemInfo;

    .line 71
    if-eqz v1, :cond_51

    .line 73
    const-string v2, "file_item_info"

    .line 75
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileItemInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_51
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 84
    if-eqz v1, :cond_5e

    .line 86
    const-string v2, "err_info"

    .line 88
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/ErrInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 95
    :cond_5e
    return-object v0

    .line 96
    :catch_5f
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 99
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "FileUploadInfo{fileName=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x27

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ", fileId=\'"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFileId()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, ", filePath=\'"

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->filePath:Ljava/lang/String;

    .line 39
    const-string v3, ", failedMovePath=\'"

    .line 41
    invoke-static {v0, v2, v1, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->failedMovePath:Ljava/lang/String;

    .line 46
    const-string v3, ", isBackground=\'"

    .line 48
    invoke-static {v0, v2, v1, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 51
    iget-boolean v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->isBackground:Z

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, ", time=\'"

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mTime:J

    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, ", size=\'"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v2, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    .line 79
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, ", sha1=\'"

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getSha1()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, ", coverUrl=\'"

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getThumbnailUrl()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", mErrInfo="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->mErrInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "}"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    return-object v0
.end method
