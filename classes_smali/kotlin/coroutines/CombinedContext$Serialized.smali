.class final Lkotlin/coroutines/CombinedContext$Serialized;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/CombinedContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serialized"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/CombinedContext$Serialized$a;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/coroutines/CombinedContext$Serialized$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final elements:[Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/coroutines/CombinedContext$Serialized$a;

    invoke-direct {v0}, Lkotlin/coroutines/CombinedContext$Serialized$a;-><init>()V

    sput-object v0, Lkotlin/coroutines/CombinedContext$Serialized;->Companion:Lkotlin/coroutines/CombinedContext$Serialized$a;

    return-void
.end method

.method public constructor <init>([Lkotlin/coroutines/CoroutineContext;)V
    .registers 3
    .param p1  # [Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "elements"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/CombinedContext$Serialized;->elements:[Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lkotlin/coroutines/CombinedContext$Serialized;->elements:[Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_11

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final getElements()[Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/CombinedContext$Serialized;->elements:[Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method