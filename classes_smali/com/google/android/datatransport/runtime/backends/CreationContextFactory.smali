.class Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;
.super Ljava/lang/Object;
.source "CreationContextFactory.java"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .registers 4
    .param p2  # Lcom/google/android/datatransport/runtime/time/Clock;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .param p3  # Lcom/google/android/datatransport/runtime/time/Clock;
        .annotation build Lcom/google/android/datatransport/runtime/time/Monotonic;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->applicationContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 10
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->applicationContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->create(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
