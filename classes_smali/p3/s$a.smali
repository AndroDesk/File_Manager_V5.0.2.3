.class public final Lp3/s$a;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$b<",
        "Lp3/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lp3/s$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp3/s$a;

    invoke-direct {v0}, Lp3/s$a;-><init>()V

    sput-object v0, Lp3/s$a;->a:Lp3/s$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
