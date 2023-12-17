.class public final Lcom/google/firebase/components/ComponentDiscovery;
.super Ljava/lang/Object;
.source "ComponentDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;,
        Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
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
.field private static final COMPONENT_KEY_PREFIX:Ljava/lang/String; = "com.google.firebase.components:"

.field private static final COMPONENT_SENTINEL_VALUE:Ljava/lang/String; = "com.google.firebase.components.ComponentRegistrar"

.field public static final TAG:Ljava/lang/String; = "ComponentDiscovery"


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    .line 8
    return-void
.end method

.method public static forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/google/firebase/components/ComponentDiscovery<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/components/ComponentDiscovery;

    .line 3
    new-instance v1, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;-><init>(Ljava/lang/Class;Lcom/google/firebase/components/ComponentDiscovery$1;)V

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/components/ComponentDiscovery;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V

    .line 12
    return-object v0
.end method

.method private static instantiate(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 9

    .line 1
    const-string v0, "Could not instantiate %s"

    .line 3
    const-string v1, "Could not instantiate %s."

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v4

    .line 11
    const-class v5, Lcom/google/firebase/components/ComponentRegistrar;

    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_21

    .line 19
    new-array v5, v3, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    move-result-object v4

    .line 25
    new-array v5, v3, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/google/firebase/components/ComponentRegistrar;

    .line 33
    return-object v4

    .line 34
    :cond_21
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    .line 36
    const-string v5, "Class %s is not an instance of %s"

    .line 38
    const/4 v6, 0x2

    .line 39
    new-array v6, v6, [Ljava/lang/Object;

    .line 41
    aput-object p0, v6, v3

    .line 43
    const-string v7, "com.google.firebase.components.ComponentRegistrar"

    .line 45
    aput-object v7, v6, v2

    .line 47
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v4, v5}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v4
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_36} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_36} :catch_63
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_36} :catch_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_36} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_36} :catch_36

    .line 55
    :catch_36
    move-exception v1

    .line 56
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    aput-object p0, v2, v3

    .line 62
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v4, p0, v1}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw v4

    .line 70
    :catch_45
    move-exception v1

    .line 71
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    aput-object p0, v2, v3

    .line 77
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-direct {v4, p0, v1}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    throw v4

    .line 85
    :catch_54
    move-exception v0

    .line 86
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    aput-object p0, v2, v3

    .line 92
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-direct {v4, p0, v0}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    throw v4

    .line 100
    :catch_63
    move-exception v0

    .line 101
    new-instance v4, Lcom/google/firebase/components/InvalidRegistrarException;

    .line 103
    new-array v2, v2, [Ljava/lang/Object;

    .line 105
    aput-object p0, v2, v3

    .line 107
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-direct {v4, p0, v0}, Lcom/google/firebase/components/InvalidRegistrarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    throw v4

    .line 115
    :catch_72
    new-array v0, v2, [Ljava/lang/Object;

    .line 117
    aput-object p0, v0, v3

    .line 119
    const-string p0, "Class %s is not an found."

    .line 121
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    const-string v0, "ComponentDiscovery"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 p0, 0x0

    .line 131
    return-object p0
.end method

.method public static synthetic lambda$discoverLazy$0(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/components/ComponentDiscovery;->instantiate(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public discover()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    .line 8
    iget-object v2, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v2}, Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;->retrieve(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_30

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 30
    :try_start_1d
    invoke-static {v2}, Lcom/google/firebase/components/ComponentDiscovery;->instantiate(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_11

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Lcom/google/firebase/components/InvalidRegistrarException; {:try_start_1d .. :try_end_26} :catch_27

    .line 39
    goto :goto_11

    .line 40
    :catch_27
    move-exception v2

    .line 41
    const-string v3, "ComponentDiscovery"

    .line 43
    const-string v4, "Invalid component registrar."

    .line 45
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    goto :goto_11

    .line 49
    :cond_30
    return-object v0
.end method

.method public discoverLazy()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    .line 8
    iget-object v2, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v2}, Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;->retrieve(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_25

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/google/firebase/components/ComponentDiscovery$$Lambda$1;->lambdaFactory$(Ljava/lang/String;)Lcom/google/firebase/inject/Provider;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_11

    .line 38
    :cond_25
    return-object v0
.end method
