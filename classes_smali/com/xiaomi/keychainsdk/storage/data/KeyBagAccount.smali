.class public Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;
.super Ljava/lang/Object;
.source "KeyBagAccount.java"


# instance fields
.field public final hsid:S

.field public final huser:J


# direct methods
.method public constructor <init>(SJ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-short p1, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    .line 6
    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_25

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 18
    goto :goto_25

    .line 19
    :cond_12
    check-cast p1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;

    .line 21
    iget-short v2, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    .line 23
    iget-short v3, p1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    .line 25
    if-ne v2, v3, :cond_23

    .line 27
    iget-wide v2, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    .line 29
    iget-wide v4, p1, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    .line 31
    cmp-long p1, v2, v4

    .line 33
    if-nez p1, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v0, v1

    .line 37
    :goto_24
    return v0

    .line 38
    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-short v1, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->hsid:S

    .line 6
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-wide v1, p0, Lcom/xiaomi/keychainsdk/storage/data/KeyBagAccount;->huser:J

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 25
    move-result v0

    .line 26
    return v0
.end method
