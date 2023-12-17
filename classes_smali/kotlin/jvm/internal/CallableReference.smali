.class public abstract Lkotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lm3/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/CallableReference$NoReceiver;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field public transient a:Lm3/b;

.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lkotlin/jvm/internal/CallableReference$NoReceiver;->access$000()Lkotlin/jvm/internal/CallableReference$NoReceiver;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lm3/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lm3/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public compute()Lm3/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->a:Lm3/b;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->computeReflected()Lm3/b;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lkotlin/jvm/internal/CallableReference;->a:Lm3/b;

    .line 11
    :cond_a
    return-object v0
.end method

.method public abstract computeReflected()Lm3/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/a;->getAnnotations()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOwner()Lm3/d;
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_1a

    .line 7
    :cond_6
    iget-boolean v1, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    .line 9
    if-eqz v1, :cond_16

    .line 11
    sget-object v1, Li3/i;->a:Li3/j;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v1, Li3/h;

    .line 18
    invoke-direct {v1, v0}, Li3/h;-><init>(Ljava/lang/Class;)V

    .line 21
    move-object v0, v1

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-static {v0}, Li3/i;->a(Ljava/lang/Class;)Li3/c;

    .line 26
    move-result-object v0

    .line 27
    :goto_1a
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->getParameters()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getReflected()Lm3/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    .line 10
    invoke-direct {v0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    .line 13
    throw v0
.end method

.method public getReturnType()Lm3/h;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->getReturnType()Lm3/h;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->getTypeParameters()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->getVisibility()Lkotlin/reflect/KVisibility;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isAbstract()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->isAbstract()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isFinal()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->isFinal()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->isOpen()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isSuspend()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/b;->isSuspend()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method
