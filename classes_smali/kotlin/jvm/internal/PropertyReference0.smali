.class public abstract Lkotlin/jvm/internal/PropertyReference0;
.super Lkotlin/jvm/internal/PropertyReference;
.source "PropertyReference0.java"

# interfaces
.implements Lm3/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/PropertyReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 3
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lm3/b;
    .registers 2

    .line 1
    sget-object v0, Li3/i;->a:Li3/j;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-object p0
.end method

.method public abstract synthetic get()Ljava/lang/Object;
.end method

.method public getDelegate()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lm3/f;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lm3/g;

    .line 7
    invoke-interface {v0}, Lm3/g;->getDelegate()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic getGetter()Lm3/f$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->getGetter()Lm3/g$a;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lm3/g$a;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lm3/f;

    move-result-object v0

    check-cast v0, Lm3/g;

    invoke-interface {v0}, Lm3/g;->getGetter()Lm3/g$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference0;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
