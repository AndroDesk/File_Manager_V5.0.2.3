.class public final Lj0/n;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/n$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "fonts-androidx"

    .line 6
    iput-object v0, p0, Lj0/n;->a:Ljava/lang/String;

    .line 8
    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lj0/n;->b:I

    .line 12
    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1
    new-instance v0, Lj0/n$a;

    .line 3
    iget-object v1, p0, Lj0/n;->a:Ljava/lang/String;

    .line 5
    iget v2, p0, Lj0/n;->b:I

    .line 7
    invoke-direct {v0, v2, v1, p1}, Lj0/n$a;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 10
    return-object v0
.end method
