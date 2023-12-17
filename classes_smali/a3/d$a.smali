.class public final La3/d$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$b<",
        "La3/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:La3/d$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La3/d$a;

    invoke-direct {v0}, La3/d$a;-><init>()V

    sput-object v0, La3/d$a;->a:La3/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
