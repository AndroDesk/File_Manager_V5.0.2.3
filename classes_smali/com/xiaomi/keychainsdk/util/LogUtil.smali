.class public Lcom/xiaomi/keychainsdk/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/DataUtil;->utf8bytes(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/DataUtil;->sha256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
