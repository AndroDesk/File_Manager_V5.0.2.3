.class final synthetic Lcom/google/firebase/components/OptionalProvider$$Lambda$1;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field private final arg$1:Lcom/google/firebase/inject/Deferred$DeferredHandler;

.field private final arg$2:Lcom/google/firebase/inject/Deferred$DeferredHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;->arg$1:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object p2, p0, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;->arg$2:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .registers 3

    new-instance v0, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/google/firebase/inject/Provider;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;->arg$1:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iget-object v1, p0, Lcom/google/firebase/components/OptionalProvider$$Lambda$1;->arg$2:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/components/OptionalProvider;->lambda$whenAvailable$2(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
