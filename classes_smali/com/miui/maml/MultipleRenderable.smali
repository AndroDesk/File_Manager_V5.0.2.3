.class public Lcom/miui/maml/MultipleRenderable;
.super Ljava/lang/Object;
.source "MultipleRenderable.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/MultipleRenderable$RenderableInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultipleRenderable"


# instance fields
.field private mActiveCount:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/MultipleRenderable$RenderableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method private find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 10
    iget-object v2, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 18
    iget-object v3, v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    if-ne v3, p1, :cond_1a

    .line 26
    return-object v2

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method private setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setPause: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MultipleRenderable"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_27

    .line 37
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 39
    return p1

    .line 40
    :cond_27
    iget-boolean v0, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 42
    if-eq v0, p2, :cond_38

    .line 44
    iput-boolean p2, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 46
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 48
    if-eqz p2, :cond_34

    .line 50
    add-int/lit8 p1, p1, -0x1

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    add-int/lit8 p1, p1, 0x1

    .line 55
    :goto_36
    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 57
    :cond_38
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 59
    return p1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 5
    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    .line 6
    if-eqz v0, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    const-string v0, "MultipleRenderable"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "add: "

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 36
    invoke-direct {v1, p1}, Lcom/miui/maml/MultipleRenderable$RenderableInfo;-><init>(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 46
    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_31

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit p0

    .line 52
    throw p1
.end method

.method public declared-synchronized doRender()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput v0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 5
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    :goto_c
    if-ltz v0, :cond_37

    .line 15
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 23
    iget-boolean v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 25
    if-eqz v2, :cond_1b

    .line 27
    goto :goto_34

    .line 28
    :cond_1b
    iget-object v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/miui/maml/RendererController$IRenderable;

    .line 36
    if-eqz v1, :cond_2f

    .line 38
    invoke-interface {v1}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 41
    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_39

    .line 53
    :goto_34
    add-int/lit8 v0, v0, -0x1

    .line 55
    goto :goto_c

    .line 56
    :cond_37
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_39
    move-exception v0

    .line 59
    monitor-exit p0

    .line 60
    throw v0
.end method

.method public declared-synchronized pause(Lcom/miui/maml/RendererController$IRenderable;)I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    .line 6
    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return p1

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized remove(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4d

    .line 8
    if-nez v0, :cond_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 14
    :goto_d
    if-ltz v0, :cond_4b

    .line 16
    :try_start_f
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 24
    iget-object v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/miui/maml/RendererController$IRenderable;

    .line 32
    if-eqz v2, :cond_23

    .line 34
    if-ne v2, p1, :cond_48

    .line 36
    :cond_23
    iget-boolean v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 38
    if-nez v1, :cond_2d

    .line 40
    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 44
    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 46
    :cond_2d
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 51
    const-string v1, "MultipleRenderable"

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v4, "remove: "

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_4d

    .line 73
    :cond_48
    add-int/lit8 v0, v0, -0x1

    .line 75
    goto :goto_d

    .line 76
    :cond_4b
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public declared-synchronized resume(Lcom/miui/maml/RendererController$IRenderable;)I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    .line 6
    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 7
    monitor-exit p0

    .line 8
    return p1

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized size()I
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method
