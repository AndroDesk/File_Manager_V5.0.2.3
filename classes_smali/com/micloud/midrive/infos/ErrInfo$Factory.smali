.class public Lcom/micloud/midrive/infos/ErrInfo$Factory;
.super Ljava/lang/Object;
.source "ErrInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/ErrInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "ErrInfo factory"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/ErrInfo;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/ErrInfo;

    .line 3
    const-string v1, "err_code"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    invoke-direct {v0, p0}, Lcom/micloud/midrive/infos/ErrInfo;-><init>(I)V

    .line 12
    return-object v0
.end method
