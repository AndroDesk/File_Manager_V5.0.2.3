.class Lmiuix/animation/Folme$3;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/Folme;->performTargetCleanForTooMuchInvalid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lmiuix/animation/Folme;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_27

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 30
    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->isValid()Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_11

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_11

    .line 40
    :cond_27
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_41

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v2

    .line 50
    if-lez v2, :cond_41

    .line 52
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 55
    move-result-object v2

    .line 56
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x2

    .line 59
    iput v0, v2, Landroid/os/Message;->what:I

    .line 61
    const-wide/16 v3, 0x3e8

    .line 63
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    :cond_41
    return-void
.end method
