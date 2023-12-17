.class public Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;
.super Ljava/lang/Object;
.source "FileCacheTotalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FileCacheTotalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCacheTotalChange"
.end annotation


# instance fields
.field public countChange:I

.field public sizeChange:J

.field public type:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileCacheTotalInfo$FileCacheTotalChange;->type:Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 6
    return-void
.end method
