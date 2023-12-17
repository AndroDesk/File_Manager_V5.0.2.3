.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "FirebaseInstallationsRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 3
    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 5
    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 11
    const-class v2, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    .line 13
    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    .line 16
    move-result-object v2

    .line 17
    const-class v3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 19
    invoke-interface {p0, v3}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, v1, v2, p0}, Lcom/google/firebase/installations/FirebaseInstallations;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/google/firebase/components/Component;

    .line 4
    const-class v1, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 12
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    .line 19
    move-result-object v1

    .line 20
    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 22
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    .line 29
    move-result-object v1

    .line 30
    const-class v2, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    .line 32
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar$$Lambda$1;->lambdaFactory$()Lcom/google/firebase/components/ComponentFactory;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x0

    .line 53
    aput-object v1, v0, v2

    .line 55
    const-string v1, "fire-installations"

    .line 57
    const-string v2, "16.3.5"

    .line 59
    invoke-static {v1, v2}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x1

    .line 64
    aput-object v1, v0, v2

    .line 66
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
