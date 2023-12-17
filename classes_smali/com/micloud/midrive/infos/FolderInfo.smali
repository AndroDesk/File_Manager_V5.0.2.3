.class public Lcom/micloud/midrive/infos/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FolderInfo$CategoryType;
    }
.end annotation


# static fields
.field public static final JSON_BOOLEAN_HAS_MORE:Ljava/lang/String; = "hasMore"

.field public static final JSON_INT_ALL_COUNTS:Ljava/lang/String; = "allCount"

.field public static final JSON_INT_PAGE_NUMBER:Ljava/lang/String; = "page_number"

.field public static final JSON_STR_FILE_RECORDS:Ljava/lang/String; = "records"

.field public static final JSON_STR_FOLDER_NAME:Ljava/lang/String; = "name"

.field public static final JSON_STR_ORDER:Ljava/lang/String; = "order"


# instance fields
.field public final allCount:I

.field public final categoryType:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

.field public final childrenFileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final hasMore:Z

.field public final id:Ljava/lang/String;

.field public final lastAccessTime:J

.field public final name:Ljava/lang/String;

.field public final order:Ljava/lang/String;

.field public final pageNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/micloud/midrive/infos/FolderInfo$CategoryType;JLjava/lang/String;Ljava/util/List;IZILjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/infos/FolderInfo$CategoryType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FileInfo;",
            ">;IZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FolderInfo;->id:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/FolderInfo;->categoryType:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    .line 8
    iput-object p5, p0, Lcom/micloud/midrive/infos/FolderInfo;->name:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lcom/micloud/midrive/infos/FolderInfo;->lastAccessTime:J

    .line 12
    iput-object p6, p0, Lcom/micloud/midrive/infos/FolderInfo;->childrenFileInfos:Ljava/util/List;

    .line 14
    iput p7, p0, Lcom/micloud/midrive/infos/FolderInfo;->pageNumber:I

    .line 16
    iput-boolean p8, p0, Lcom/micloud/midrive/infos/FolderInfo;->hasMore:Z

    .line 18
    iput p9, p0, Lcom/micloud/midrive/infos/FolderInfo;->allCount:I

    .line 20
    iput-object p10, p0, Lcom/micloud/midrive/infos/FolderInfo;->order:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private fileInfoListToJasonArray()Lorg/json/JSONArray;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->childrenFileInfos:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1f

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/micloud/midrive/infos/FileInfo;

    .line 24
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/FileInfo;->toJSONObject()Lorg/json/JSONObject;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public propertiesToJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->name:Ljava/lang/String;

    .line 8
    const-string v2, "name"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-direct {p0}, Lcom/micloud/midrive/infos/FolderInfo;->fileInfoListToJasonArray()Lorg/json/JSONArray;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "records"

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-boolean v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->hasMore:Z

    .line 24
    const-string v2, "hasMore"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    iget v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->pageNumber:I

    .line 31
    const-string v2, "page_number"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    iget v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->allCount:I

    .line 38
    const-string v2, "allCount"

    .line 40
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    iget-object v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->order:Ljava/lang/String;

    .line 45
    const-string v2, "order"

    .line 47
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    return-object v0
.end method
