.class public Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;
.super Ljava/lang/Object;
.source "DefaultUserAgentPublisher.java"

# interfaces
.implements Lcom/google/firebase/platforminfo/UserAgentPublisher;


# instance fields
.field private final gamesSDKRegistrar:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

.field private final javaSDKVersionUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/firebase/platforminfo/LibraryVersion;",
            ">;",
            "Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->toUserAgent(Ljava/util/Set;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->gamesSDKRegistrar:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    .line 12
    return-void
.end method

.method public static component()Lcom/google/firebase/components/Component;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    .line 3
    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 9
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher$$Lambda$1;->lambdaFactory$()Lcom/google/firebase/components/ComponentFactory;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public static synthetic lambda$component$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/platforminfo/UserAgentPublisher;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;

    .line 3
    const-class v1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 5
    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->getInstance()Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;-><init>(Ljava/util/Set;Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;)V

    .line 16
    return-object v0
.end method

.method private static toUserAgent(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/firebase/platforminfo/LibraryVersion;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_34

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getLibraryName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const/16 v2, 0x2f

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getVersion()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_9

    .line 47
    const/16 v1, 0x20

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_9

    .line 53
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->gamesSDKRegistrar:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->getRegisteredVersions()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    iget-object v0, p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x20

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->gamesSDKRegistrar:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    .line 33
    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->getRegisteredVersions()Ljava/util/Set;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->toUserAgent(Ljava/util/Set;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
