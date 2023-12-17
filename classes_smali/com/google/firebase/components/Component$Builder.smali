.class public Lcom/google/firebase/components/Component$Builder;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/google/firebase/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private instantiation:I

.field private final providedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private publishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 6
    iput v1, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 8
    invoke-static {p1, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    array-length p1, p2

    :goto_26
    if-ge v1, p1, :cond_30

    aget-object v0, p2, v1

    .line 11
    invoke-static {v0, v2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 12
    :cond_30
    iget-object p1, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/Component$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/Component$Builder;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/firebase/components/Component$Builder;)Lcom/google/firebase/components/Component$Builder;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/components/Component$Builder;->intoSet()Lcom/google/firebase/components/Component$Builder;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private intoSet()Lcom/google/firebase/components/Component$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 4
    return-object p0
.end method

.method private setInstantiation(I)Lcom/google/firebase/components/Component$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "Instantiation type has already been set."

    .line 10
    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 13
    iput p1, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 15
    return-object p0
.end method

.method private validateInterface(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 9
    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    .line 11
    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Dependency;",
            ")",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "Null dependency"

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->validateInterface(Ljava/lang/Class;)V

    .line 13
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    return-object p0
.end method

.method public alwaysEager()Lcom/google/firebase/components/Component$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->setInstantiation(I)Lcom/google/firebase/components/Component$Builder;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public build()Lcom/google/firebase/components/Component;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "Missing required property: factory."

    .line 10
    invoke-static {v0, v1}, Lcom/google/firebase/components/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 13
    new-instance v0, Lcom/google/firebase/components/Component;

    .line 15
    new-instance v3, Ljava/util/HashSet;

    .line 17
    iget-object v1, p0, Lcom/google/firebase/components/Component$Builder;->providedInterfaces:Ljava/util/Set;

    .line 19
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    new-instance v4, Ljava/util/HashSet;

    .line 24
    iget-object v1, p0, Lcom/google/firebase/components/Component$Builder;->dependencies:Ljava/util/Set;

    .line 26
    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    iget v5, p0, Lcom/google/firebase/components/Component$Builder;->instantiation:I

    .line 31
    iget v6, p0, Lcom/google/firebase/components/Component$Builder;->type:I

    .line 33
    iget-object v7, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 35
    iget-object v8, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    .line 37
    const/4 v9, 0x0

    .line 38
    move-object v2, v0

    .line 39
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/components/Component;-><init>(Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/ComponentFactory;Ljava/util/Set;Lcom/google/firebase/components/Component$1;)V

    .line 42
    return-object v0
.end method

.method public eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/google/firebase/components/Component$Builder;->setInstantiation(I)Lcom/google/firebase/components/Component$Builder;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentFactory<",
            "TT;>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "Null factory"

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/firebase/components/ComponentFactory;

    .line 9
    iput-object p1, p0, Lcom/google/firebase/components/Component$Builder;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 11
    return-object p0
.end method

.method public publishes(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Component$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/Component$Builder;->publishedEvents:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method
