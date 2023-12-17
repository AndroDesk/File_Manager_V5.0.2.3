.class public final enum Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
.super Ljava/lang/Enum;
.source "CachedFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/CachedFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

.field public static final enum DOCUMENT:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

.field public static final enum DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

.field public static final enum PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

.field public static final enum UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;


# instance fields
.field public type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 3
    const-string v1, "UPLOAD"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "upload"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 13
    new-instance v1, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 15
    const-string v3, "DOWNLOAD"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "download"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 25
    new-instance v3, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 27
    const-string v5, "PREVIEW"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "preview"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 37
    new-instance v5, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 39
    const-string v7, "DOCUMENT"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "document"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOCUMENT:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 49
    const/4 v7, 0x4

    .line 50
    new-array v7, v7, [Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 52
    aput-object v0, v7, v2

    .line 54
    aput-object v1, v7, v4

    .line 56
    aput-object v3, v7, v6

    .line 58
    aput-object v5, v7, v8

    .line 60
    sput-object v7, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->$VALUES:[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->type:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static getCachedFileType(Ljava/lang/String;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->values()[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_16

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget-object v4, v3, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->type:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    return-object v3

    .line 20
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v0, "should not run to there."

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->$VALUES:[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 9
    return-object v0
.end method
