.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;
.super Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
.source "AutoValue_BackendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private events:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/EventInternal;",
            ">;"
        }
    .end annotation
.end field

.field private extras:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/backends/BackendRequest;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;->events:Ljava/lang/Iterable;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, " events"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1a

    .line 16
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;

    .line 18
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;->events:Ljava/lang/Iterable;

    .line 20
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;->extras:[B

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest;-><init>(Ljava/lang/Iterable;[BLcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$1;)V

    .line 26
    return-object v0

    .line 27
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 29
    const-string v2, "Missing required properties:"

    .line 31
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v1
.end method

.method public setEvents(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/EventInternal;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;->events:Ljava/lang/Iterable;

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string v0, "Null events"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setExtras([B)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;->extras:[B

    .line 3
    return-object p0
.end method
