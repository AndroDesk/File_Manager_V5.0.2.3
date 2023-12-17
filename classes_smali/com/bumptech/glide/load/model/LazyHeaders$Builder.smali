.class public final Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private copyOnModify:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private isUserAgentDefault:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getSanitizedUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_20

    .line 19
    new-instance v2, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    .line 21
    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    const-string v2, "User-Agent"

    .line 30
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 7
    sget-object v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->DEFAULT_HEADERS:Ljava/util/Map;

    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 11
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    .line 13
    return-void
.end method

.method private copyHeaders()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_34

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/util/Collection;

    .line 42
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_15

    .line 53
    :cond_34
    return-object v0
.end method

.method private copyIfNecessary()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyHeaders()Ljava/util/Map;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 14
    :cond_d
    return-void
.end method

.method private getFactories(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/LazyHeaderFactory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 9
    if-nez v0, :cond_14

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    return-object v0
.end method

.method public static getSanitizedUserAgent()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "http.agent"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_1b
    if-ge v3, v1, :cond_39

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v4

    .line 34
    const/16 v5, 0x1f

    .line 36
    if-gt v4, v5, :cond_29

    .line 38
    const/16 v5, 0x9

    .line 40
    if-ne v4, v5, :cond_31

    .line 42
    :cond_29
    const/16 v5, 0x7f

    .line 44
    if-ge v4, v5, :cond_31

    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    const/16 v4, 0x3f

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :goto_36
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_1b

    .line 58
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .registers 4

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz v0, :cond_11

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object p1

    return-object p1

    .line 4
    :cond_11
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    .line 5
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .registers 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/bumptech/glide/load/model/LazyHeaders;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyOnModify:Z

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders;

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    .line 8
    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/LazyHeaders;-><init>(Ljava/util/Map;)V

    .line 11
    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .registers 4

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->copyIfNecessary()V

    if-nez p2, :cond_b

    .line 3
    iget-object p2, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->headers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 4
    :cond_b
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->getFactories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_15
    iget-boolean p2, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    if-eqz p2, :cond_24

    const-string p2, "User-Agent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->isUserAgentDefault:Z

    :cond_24
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
    .registers 4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    .line 1
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object p1

    return-object p1
.end method
