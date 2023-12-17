.class public abstract Lkotlin/jvm/internal/Lambda;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Li3/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li3/f<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lkotlin/jvm/internal/Lambda;->arity:I

    .line 6
    return-void
.end method


# virtual methods
.method public getArity()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/jvm/internal/Lambda;->arity:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Li3/i;->a:Li3/j;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p0}, Li3/j;->a(Li3/f;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "renderLambdaToString(this)"

    .line 12
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-object v0
.end method
