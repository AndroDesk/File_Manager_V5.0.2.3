.class public final Lp3/k0$b;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$b<",
        "Lp3/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lp3/k0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp3/k0$b;

    invoke-direct {v0}, Lp3/k0$b;-><init>()V

    sput-object v0, Lp3/k0$b;->a:Lp3/k0$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
