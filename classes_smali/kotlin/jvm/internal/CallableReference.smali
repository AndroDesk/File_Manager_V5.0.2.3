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

    invoke-static {}, Lkotlin/jvm/internal/CallableReference$NoReceiver;->access$000()Lkotlin/jvm/internal/CallableReference$NoReceiver;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

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

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm3/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm3/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lm3/b;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->a:Lm3/b;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->computeReflected()Lm3/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/CallableReference;->a:Lm3/b;

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

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/a;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lm3/d;
    .registers 3

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1a

    :cond_6
    iget-boolean v1, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    if-eqz v1, :cond_16

    sget-object v1, Li3/i;->a:Li3/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li3/h;

    invoke-direct {v1, v0}, Li3/h;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Li3/i;->a(Ljava/lang/Class;)Li3/c;

    move-result-object v0

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

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReflected()Lm3/b;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lm3/b;

    move-result-object v0

    if-eq v0, p0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {v0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw v0
.end method

.method public getReturnType()Lm3/h;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->getReturnType()Lm3/h;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

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

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->getVisibility()Lkotlin/reflect/KVisibility;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    invoke-interface {v0}, Lm3/b;->isSuspend()Z

    move-result v0

    return v0
.end method
