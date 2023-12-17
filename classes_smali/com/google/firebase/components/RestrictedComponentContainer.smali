.class final Lcom/google/firebase/components/RestrictedComponentContainer;
.super Lcom/google/firebase/components/AbstractComponentContainer;
.source "RestrictedComponentContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;
    }
.end annotation


# instance fields
.field private final allowedDeferredInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedPublishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedSetDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedSetProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final delegateContainer:Lcom/google/firebase/components/ComponentContainer;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Lcom/google/firebase/components/ComponentContainer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/components/AbstractComponentContainer;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 16
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 19
    new-instance v3, Ljava/util/HashSet;

    .line 21
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 24
    new-instance v4, Ljava/util/HashSet;

    .line 26
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getDependencies()Ljava/util/Set;

    .line 32
    move-result-object v5

    .line 33
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v5

    .line 37
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_70

    .line 43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/google/firebase/components/Dependency;

    .line 49
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->isDirectInjection()Z

    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_4c

    .line 55
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->isSet()Z

    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_44

    .line 61
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_24

    .line 69
    :cond_44
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_24

    .line 77
    :cond_4c
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->isDeferred()Z

    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_5a

    .line 83
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_24

    .line 91
    :cond_5a
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->isSet()Z

    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_68

    .line 97
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_24

    .line 105
    :cond_68
    invoke-virtual {v6}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_24

    .line 113
    :cond_70
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getPublishedEvents()Ljava/util/Set;

    .line 116
    move-result-object v5

    .line 117
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_7f

    .line 123
    const-class v5, Lcom/google/firebase/events/Publisher;

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_7f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDirectInterfaces:Ljava/util/Set;

    .line 134
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedProviderInterfaces:Ljava/util/Set;

    .line 140
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDeferredInterfaces:Ljava/util/Set;

    .line 146
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetDirectInterfaces:Ljava/util/Set;

    .line 152
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetProviderInterfaces:Ljava/util/Set;

    .line 158
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getPublishedEvents()Ljava/util/Set;

    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedPublishedEvents:Ljava/util/Set;

    .line 164
    iput-object p2, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/firebase/components/ComponentContainer;

    .line 166
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDirectInterfaces:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_21

    .line 9
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/firebase/components/ComponentContainer;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/google/firebase/events/Publisher;

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_17

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance p1, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;

    .line 26
    iget-object v1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedPublishedEvents:Ljava/util/Set;

    .line 28
    check-cast v0, Lcom/google/firebase/events/Publisher;

    .line 30
    invoke-direct {p1, v1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;-><init>(Ljava/util/Set;Lcom/google/firebase/events/Publisher;)V

    .line 33
    return-object p1

    .line 34
    :cond_21
    new-instance v0, Lcom/google/firebase/components/DependencyException;

    .line 36
    const/4 v1, 0x1

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    const/4 v2, 0x0

    .line 40
    aput-object p1, v1, v2

    .line 42
    const-string p1, "Attempting to request an undeclared dependency %s."

    .line 44
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0
.end method

.method public getDeferred(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDeferredInterfaces:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/firebase/components/ComponentContainer;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->getDeferred(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance v0, Lcom/google/firebase/components/DependencyException;

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    const-string p1, "Attempting to request an undeclared dependency Deferred<%s>."

    .line 26
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedProviderInterfaces:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/firebase/components/ComponentContainer;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance v0, Lcom/google/firebase/components/DependencyException;

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    const-string p1, "Attempting to request an undeclared dependency Provider<%s>."

    .line 26
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public setOf(Ljava/lang/Class;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetDirectInterfaces:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/firebase/components/ComponentContainer;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance v0, Lcom/google/firebase/components/DependencyException;

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    const-string p1, "Attempting to request an undeclared dependency Set<%s>."

    .line 26
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetProviderInterfaces:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Lcom/google/firebase/components/ComponentContainer;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance v0, Lcom/google/firebase/components/DependencyException;

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    const-string p1, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    .line 26
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method
