.class Lkotlin/jvm/internal/CallableReference$NoReceiver;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/CallableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoReceiver"
.end annotation


# static fields
.field public static final a:Lkotlin/jvm/internal/CallableReference$NoReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/CallableReference$NoReceiver;

    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/CallableReference$NoReceiver;-><init>()V

    .line 6
    sput-object v0, Lkotlin/jvm/internal/CallableReference$NoReceiver;->a:Lkotlin/jvm/internal/CallableReference$NoReceiver;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lkotlin/jvm/internal/CallableReference$NoReceiver;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/CallableReference$NoReceiver;->a:Lkotlin/jvm/internal/CallableReference$NoReceiver;

    .line 3
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/CallableReference$NoReceiver;->a:Lkotlin/jvm/internal/CallableReference$NoReceiver;

    .line 3
    return-object v0
.end method
