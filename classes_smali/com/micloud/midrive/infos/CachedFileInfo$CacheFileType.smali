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

    new-instance v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    const-string v1, "UPLOAD"

    const/4 v2, 0x0

    const-string v3, "upload"

    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->UPLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    new-instance v1, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    const-string v3, "DOWNLOAD"

    const/4 v4, 0x1

    const-string v5, "download"

    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOWNLOAD:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    new-instance v3, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    const-string v5, "PREVIEW"

    const/4 v6, 0x2

    const-string v7, "preview"

    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->PREVIEW:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    new-instance v5, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    const-string v7, "DOCUMENT"

    const/4 v8, 0x3

    const-string v9, "document"

    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->DOCUMENT:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->$VALUES:[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getCachedFileType(Ljava/lang/String;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->values()[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->type:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "should not run to there."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->$VALUES:[Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    return-object v0
.end method
