.class final synthetic Lcom/google/firebase/components/Component$$Lambda$3;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field private final arg$1:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/Component$$Lambda$3;->arg$1:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Object;)Lcom/google/firebase/components/ComponentFactory;
    .registers 2

    new-instance v0, Lcom/google/firebase/components/Component$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/Component$$Lambda$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/components/Component$$Lambda$3;->arg$1:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/firebase/components/Component;->lambda$intoSet$2(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
