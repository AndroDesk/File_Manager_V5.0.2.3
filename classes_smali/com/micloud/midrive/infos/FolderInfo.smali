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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/FolderInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/FolderInfo;->categoryType:Lcom/micloud/midrive/infos/FolderInfo$CategoryType;

    iput-object p5, p0, Lcom/micloud/midrive/infos/FolderInfo;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/micloud/midrive/infos/FolderInfo;->lastAccessTime:J

    iput-object p6, p0, Lcom/micloud/midrive/infos/FolderInfo;->childrenFileInfos:Ljava/util/List;

    iput p7, p0, Lcom/micloud/midrive/infos/FolderInfo;->pageNumber:I

    iput-boolean p8, p0, Lcom/micloud/midrive/infos/FolderInfo;->hasMore:Z

    iput p9, p0, Lcom/micloud/midrive/infos/FolderInfo;->allCount:I

    iput-object p10, p0, Lcom/micloud/midrive/infos/FolderInfo;->order:Ljava/lang/String;

    return-void
.end method

.method private fileInfoListToJasonArray()Lorg/json/JSONArray;
    .registers 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->childrenFileInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/FileInfo;

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/FileInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public propertiesToJSONObject()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/micloud/midrive/infos/FolderInfo;->fileInfoListToJasonArray()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "records"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->hasMore:Z

    const-string v2, "hasMore"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->pageNumber:I

    const-string v2, "page_number"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->allCount:I

    const-string v2, "allCount"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FolderInfo;->order:Ljava/lang/String;

    const-string v2, "order"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
