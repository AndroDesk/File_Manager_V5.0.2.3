.class public final enum Lkotlin/coroutines/intrinsics/CoroutineSingletons;
.super Ljava/lang/Enum;
.source "Intrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/coroutines/intrinsics/CoroutineSingletons;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

.field public static final enum RESUMED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

.field public static final enum UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

.field public static final synthetic a:[Lkotlin/coroutines/intrinsics/CoroutineSingletons;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    const-string v1, "COROUTINE_SUSPENDED"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/intrinsics/CoroutineSingletons;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    new-instance v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    const-string v3, "UNDECIDED"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lkotlin/coroutines/intrinsics/CoroutineSingletons;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    new-instance v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    const-string v5, "RESUMED"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lkotlin/coroutines/intrinsics/CoroutineSingletons;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->RESUMED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->a:[Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .registers 2

    const-class v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public static values()[Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .registers 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->a:[Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object v0
.end method
