.class Ljcifs/smb/Dfs$CacheEntry;
.super Ljava/lang/Object;
.source "Dfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Dfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheEntry"
.end annotation


# instance fields
.field public expiration:J

.field public map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    cmp-long v0, p1, v0

    .line 8
    if-nez v0, :cond_b

    .line 10
    sget-wide p1, Ljcifs/smb/Dfs;->TTL:J

    .line 12
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x3e8

    .line 18
    mul-long/2addr p1, v2

    .line 19
    add-long/2addr p1, v0

    .line 20
    iput-wide p1, p0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    iput-object p1, p0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    .line 29
    return-void
.end method
