.class public Lcom/micloud/midrive/infos/CachedFileInfo;
.super Ljava/lang/Object;
.source "CachedFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;,
        Lcom/micloud/midrive/infos/CachedFileInfo$Factory;
    }
.end annotation


# static fields
.field public static final CACHED_FILE_TYPE_DOCUMENT:Ljava/lang/String; = "document"

.field public static final CACHED_FILE_TYPE_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final CACHED_FILE_TYPE_PREVIEW:Ljava/lang/String; = "preview"

.field private static final CACHED_FILE_TYPE_UPLOAD:Ljava/lang/String; = "upload"

.field public static final JSON_LONG_DONE_TIME:Ljava/lang/String; = "done_time"

.field public static final JSON_STR_COVER_URL:Ljava/lang/String; = "cover_url"

.field public static final JSON_STR_FILE_ID:Ljava/lang/String; = "file_id"

.field public static final JSON_STR_NAME:Ljava/lang/String; = "name"

.field public static final JSON_STR_PATH:Ljava/lang/String; = "path"

.field public static final JSON_STR_SHA1:Ljava/lang/String; = "sha1"


# instance fields
.field public final coverUrl:Ljava/lang/String;

.field public final doneTime:J

.field public final fileId:Ljava/lang/String;

.field public final identifyKey:Ljava/lang/String;

.field public final lastAccessTime:J

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;

.field public final size:J

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->identifyKey:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->name:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->fileId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->sha1:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->path:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->type:Ljava/lang/String;

    .line 16
    iput-wide p7, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->size:J

    .line 18
    iput-wide p9, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->doneTime:J

    .line 20
    iput-wide p11, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->lastAccessTime:J

    .line 22
    iput-object p13, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->coverUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public filePropertiesToJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "file_id"

    .line 8
    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->fileId:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "name"

    .line 15
    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "path"

    .line 22
    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->path:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "sha1"

    .line 29
    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->sha1:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "done_time"

    .line 36
    iget-wide v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->doneTime:J

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string v1, "cover_url"

    .line 43
    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->coverUrl:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 48
    return-object v0

    .line 49
    :catch_30
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "CachedFileInfo"

    .line 3
    const-string v1, "{identifyKey:"

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->identifyKey:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", name"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", fileID:"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->fileId:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", sha1:"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->sha1:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", path:"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->path:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", type:"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->type:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", size:"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-wide v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->size:J

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", doneTime"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-wide v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->doneTime:J

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", lastAccessTime"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-wide v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->lastAccessTime:J

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
