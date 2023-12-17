.class public final enum Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
.super Ljava/lang/Enum;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final enum TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public static final synthetic a:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 3
    const-string v1, "CPU_ACQUIRED"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 11
    new-instance v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 13
    const-string v3, "BLOCKING"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 21
    new-instance v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 23
    const-string v5, "PARKING"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 31
    new-instance v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 33
    const-string v7, "DORMANT"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 41
    new-instance v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 43
    const-string v9, "TERMINATED"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 54
    aput-object v0, v9, v2

    .line 56
    aput-object v1, v9, v4

    .line 58
    aput-object v3, v9, v6

    .line 60
    aput-object v5, v9, v8

    .line 62
    aput-object v7, v9, v10

    .line 64
    sput-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->a:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 66
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

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .registers 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->a:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-object v0
.end method
