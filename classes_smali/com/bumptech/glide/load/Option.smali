.class public final Lcom/bumptech/glide/load/Option;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/Option$CacheKeyUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;

.field private volatile keyBytes:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/Option$1;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/Option$1;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/load/Option;->EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/load/Option;->defaultValue:Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/Option;->cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    .line 20
    return-void
.end method

.method public static disk(Ljava/lang/String;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)Lcom/bumptech/glide/load/Option;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method public static disk(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)Lcom/bumptech/glide/load/Option;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/Option;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method private static emptyUpdater()Lcom/bumptech/glide/load/Option$CacheKeyUpdater;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/Option$CacheKeyUpdater<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/Option;->EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    .line 3
    return-object v0
.end method

.method private getKeyBytes()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    .line 3
    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    .line 17
    return-object v0
.end method

.method public static memory(Ljava/lang/String;)Lcom/bumptech/glide/load/Option;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/Option;

    invoke-static {}, Lcom/bumptech/glide/load/Option;->emptyUpdater()Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method public static memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/Option;

    invoke-static {}, Lcom/bumptech/glide/load/Option;->emptyUpdater()Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/Option;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/Option;

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->defaultValue:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Option{key=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x27

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const/16 v1, 0x7d

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/Option;->getKeyBytes()[B

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1, p2}, Lcom/bumptech/glide/load/Option$CacheKeyUpdater;->update([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    .line 10
    return-void
.end method
