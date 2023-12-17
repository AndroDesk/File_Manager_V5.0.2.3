.class public Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;
.super Ljava/lang/Object;
.source "KeyBagAccount.java"


# instance fields
.field public final hsid:S

.field public final huser:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(SJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    :cond_12
    check-cast p1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    iget-short v2, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    iget-short v3, p1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    if-ne v2, v3, :cond_23

    iget-wide v2, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    iget-wide v4, p1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
