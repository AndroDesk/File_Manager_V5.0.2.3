.class Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;
.super Ljava/lang/Object;
.source "FileMimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/FileMimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mime"
.end annotation


# instance fields
.field private final mEnd:[B

.field private final mHead:[B

.field private final mMime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mMime:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    .line 8
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    .line 10
    return-void
.end method


# virtual methods
.method public getEndLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getHeadLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mMime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasEnd()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public hasHead()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isEndRight([B)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    .line 3
    array-length v0, v0

    .line 4
    array-length v1, p1

    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v3, v0, :cond_17

    .line 10
    aget-byte v4, p1, v1

    .line 12
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    .line 14
    aget-byte v5, v5, v3

    .line 16
    if-eq v4, v5, :cond_12

    .line 18
    return v2

    .line 19
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public isHeadRight([B)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_5
    if-ge v2, v0, :cond_13

    .line 8
    aget-byte v3, p1, v2

    .line 10
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    .line 12
    aget-byte v4, v4, v2

    .line 14
    if-eq v3, v4, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_5

    .line 20
    :cond_13
    const/4 p1, 0x1

    .line 21
    return p1
.end method
