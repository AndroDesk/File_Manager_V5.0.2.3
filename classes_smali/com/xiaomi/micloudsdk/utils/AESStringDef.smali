.class public Lcom/xiaomi/micloudsdk/utils/AESStringDef;
.super Ljava/lang/Object;
.source "AESStringDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;
    }
.end annotation


# static fields
.field private static final aesFormat:Ljava/lang/String; = "%s:%s:%s"

.field private static final tokenSeperator:Ljava/lang/String; = ":"


# instance fields
.field private IV:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    .registers 4

    const-string v0, ":"

    .line 1
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 3
    new-instance p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;-><init>()V

    const/4 v1, 0x0

    .line 4
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    const/4 v1, 0x2

    .line 6
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_21
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;

    const-string v1, "invalid encrypt string format,the correct format is version:iv:content but original string is:"

    .line 8
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;
    .registers 4

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 16
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;-><init>()V

    .line 17
    iput-object p0, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    .line 18
    iput-object p1, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    .line 19
    iput-object p2, v0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    return-object v0

    .line 20
    :cond_1e
    new-instance p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;

    const-string p1, "invalid AES data"

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIV()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->version:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->IV:Ljava/lang/String;

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->data:Ljava/lang/String;

    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 19
    const-string v1, "%s:%s:%s"

    .line 21
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
