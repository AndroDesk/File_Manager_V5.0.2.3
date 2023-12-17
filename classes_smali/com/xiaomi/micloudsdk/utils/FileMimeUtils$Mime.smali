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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mMime:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    return-void
.end method


# virtual methods
.method public getEndLength()I
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    array-length v0, v0

    return v0
.end method

.method public getHeadLength()I
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    array-length v0, v0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnd()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasHead()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEndRight([B)Z
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v0, :cond_17

    aget-byte v4, p1, v1

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mEnd:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_12

    return v2

    :cond_12
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method public isHeadRight([B)Z
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_13

    aget-byte v3, p1, v2

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/utils/FileMimeUtils$Mime;->mHead:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, 0x1

    return p1
.end method
