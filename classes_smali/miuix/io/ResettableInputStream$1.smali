.class Lmiuix/io/ResettableInputStream$1;
.super Ljava/lang/Object;
.source "ResettableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/io/ResettableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/io/ResettableInputStream;


# direct methods
.method public constructor <init>(Lmiuix/io/ResettableInputStream;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    .line 3
    invoke-static {v0}, Lmiuix/io/ResettableInputStream;->access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    const-string v0, "ResettableInputStream"

    .line 11
    const-string v1, "InputStream is opened but never closed here"

    .line 13
    iget-object v2, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    .line 15
    invoke-static {v2}, Lmiuix/io/ResettableInputStream;->access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    .line 24
    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1e

    .line 27
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 35
    throw v0
.end method
