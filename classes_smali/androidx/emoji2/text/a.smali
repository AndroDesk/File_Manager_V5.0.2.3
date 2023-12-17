.class public final synthetic Landroidx/emoji2/text/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/a;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/Thread;

    .line 5
    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    const/16 p1, 0xa

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 13
    return-object v1
.end method
