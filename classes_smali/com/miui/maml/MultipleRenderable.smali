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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    iget-object v3, v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultipleRenderable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    move-result-object p1

    if-nez p1, :cond_27

    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    return p1

    :cond_27
    iget-boolean v0, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eq v0, p2, :cond_38

    iput-boolean p2, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    if-eqz p2, :cond_34

    add-int/lit8 p1, p1, -0x1

    goto :goto_36

    :cond_34
    add-int/lit8 p1, p1, 0x1

    :goto_36
    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    :cond_38
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    return p1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    const-string v0, "MultipleRenderable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    invoke-direct {v1, p1}, Lcom/miui/maml/MultipleRenderable$RenderableInfo;-><init>(Lcom/miui/maml/RendererController$IRenderable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doRender()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_37

    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    iget-boolean v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eqz v2, :cond_1b

    goto :goto_34

    :cond_1b
    iget-object v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/RendererController$IRenderable;

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    goto :goto_34

    :cond_2f
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_39

    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause(Lcom/miui/maml/RendererController$IRenderable;)I
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4d

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_4b

    :try_start_f
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    iget-object v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController$IRenderable;

    if-eqz v2, :cond_23

    if-ne v2, p1, :cond_48

    :cond_23
    iget-boolean v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-nez v1, :cond_2d

    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    :cond_2d
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "MultipleRenderable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_4d

    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume(Lcom/miui/maml/RendererController$IRenderable;)I
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
