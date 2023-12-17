.class Lmiuix/animation/utils/LogUtils$1;
.super Landroid/os/Handler;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    if-nez v0, :cond_28

    .line 5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->access$000()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 21
    const-string v1, "thread log, "

    .line 23
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    return-void
.end method
