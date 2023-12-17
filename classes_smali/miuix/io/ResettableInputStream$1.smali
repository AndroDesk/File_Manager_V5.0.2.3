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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/io/ResettableInputStream;)V
    .registers 2

    iput-object p1, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    invoke-static {v0}, Lmiuix/io/ResettableInputStream;->access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "ResettableInputStream"

    const-string v1, "InputStream is opened but never closed here"

    iget-object v2, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    invoke-static {v2}, Lmiuix/io/ResettableInputStream;->access$000(Lmiuix/io/ResettableInputStream;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    iget-object v0, p0, Lmiuix/io/ResettableInputStream$1;->this$0:Lmiuix/io/ResettableInputStream;

    invoke-virtual {v0}, Lmiuix/io/ResettableInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1e

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
