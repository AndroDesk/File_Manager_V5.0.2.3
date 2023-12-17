.class public final Lf/b;
.super Ljava/lang/Object;
.source "ContextAwareHelper.java"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lf/b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    return-void
.end method


# virtual methods
.method public addOnContextAvailableListener(Lf/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lf/b;->b:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lf/b;->b:Landroid/content/Context;

    .line 7
    invoke-interface {p1, v0}, Lf/c;->a(Landroid/content/Context;)V

    .line 10
    :cond_9
    iget-object v0, p0, Lf/b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public removeOnContextAvailableListener(Lf/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lf/b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method
