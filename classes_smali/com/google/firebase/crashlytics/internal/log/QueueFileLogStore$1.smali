.class Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->getLogBytes()Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;

.field public final synthetic val$logBytes:[B

.field public final synthetic val$offsetHolder:[I


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;[B[I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$logBytes:[B

    .line 5
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$offsetHolder:[I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$logBytes:[B

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$offsetHolder:[I

    .line 5
    const/4 v2, 0x0

    .line 6
    aget v1, v1, v2

    .line 8
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 11
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$offsetHolder:[I

    .line 13
    aget v1, v0, v2

    .line 15
    add-int/2addr v1, p2

    .line 16
    aput v1, v0, v2
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_15

    .line 18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p2

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 26
    throw p2
.end method
