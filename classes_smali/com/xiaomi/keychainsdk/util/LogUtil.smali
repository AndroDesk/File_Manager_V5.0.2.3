.class public Lcom/xiaomi/keychainsdk/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
