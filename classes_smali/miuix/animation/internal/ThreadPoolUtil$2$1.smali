.class Lmiuix/animation/internal/ThreadPoolUtil$2$1;
.super Ljava/lang/Thread;
.source "ThreadPoolUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/ThreadPoolUtil$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/internal/ThreadPoolUtil$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/internal/ThreadPoolUtil$2;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiuix/animation/internal/ThreadPoolUtil$2$1;->this$0:Lmiuix/animation/internal/ThreadPoolUtil$2;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    sget v0, Lmiuix/animation/internal/ThreadPoolUtil;->sThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
