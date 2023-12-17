.class public final Lkotlin/Result;
.super Ljava/lang/Object;
.source "Result.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/Result$a;,
        Lkotlin/Result$Failure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/Result$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/Result$a;

    invoke-direct {v0}, Lkotlin/Result$a;-><init>()V

    sput-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/Result;->value:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static final synthetic box-impl(Ljava/lang/Object;)Lkotlin/Result;
    .registers 2

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public static equals-impl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lkotlin/Result;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlin/Result$Failure;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast p0, Lkotlin/Result$Failure;

    .line 7
    iget-object p0, p0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return-object p0
.end method

.method public static synthetic getValue$annotations()V
    .registers 0

    return-void
.end method

.method public static hashCode-impl(Ljava/lang/Object;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static final isFailure-impl(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lkotlin/Result$Failure;

    .line 3
    return p0
.end method

.method public static final isSuccess-impl(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    instance-of p0, p0, Lkotlin/Result$Failure;

    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 5
    return p0
.end method

.method public static toString-impl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlin/Result$Failure;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Lkotlin/Result$Failure;

    .line 7
    invoke-virtual {p0}, Lkotlin/Result$Failure;->toString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v1, "Success("

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const/16 p0, 0x29

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    :goto_21
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lkotlin/Result;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/Result;->equals-impl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/Result;->value:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->hashCode-impl(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/Result;->value:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lkotlin/Result;->toString-impl(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/Result;->value:Ljava/lang/Object;

    return-object v0
.end method
