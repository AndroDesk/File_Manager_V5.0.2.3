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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;[B[I)V
    .registers 4

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$logBytes:[B

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$offsetHolder:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$logBytes:[B

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$offsetHolder:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;->val$offsetHolder:[I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_15

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method