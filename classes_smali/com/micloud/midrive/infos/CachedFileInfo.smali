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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->identifyKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->fileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->sha1:Ljava/lang/String;

    iput-object p5, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->path:Ljava/lang/String;

    iput-object p6, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->type:Ljava/lang/String;

    iput-wide p7, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->size:J

    iput-wide p9, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->doneTime:J

    iput-wide p11, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->lastAccessTime:J

    iput-object p13, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->coverUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filePropertiesToJSONObject()Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_id"

    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "path"

    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha1"

    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "done_time"

    iget-wide v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->doneTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "cover_url"

    iget-object v2, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v0

    :catch_30
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "CachedFileInfo"

    const-string v1, "{identifyKey:"

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->identifyKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sha1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", doneTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->doneTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastAccessTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/CachedFileInfo;->lastAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
