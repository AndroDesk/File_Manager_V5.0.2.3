.class public Lcom/miui/maml/data/TimeUpdater;
.super Ljava/lang/Object;
.source "TimeUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/DateTimeVariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/DateTimeVariableUpdater;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/TimeUpdater;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/TimeUpdater;->mRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/data/DateTimeVariableUpdater;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 16
    :cond_f
    return-void
.end method
