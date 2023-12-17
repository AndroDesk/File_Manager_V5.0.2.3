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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fonts-androidx"

    iput-object v0, p0, Lj0/n;->a:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lj0/n;->b:I

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    new-instance v0, Lj0/n$a;

    iget-object v1, p0, Lj0/n;->a:Ljava/lang/String;

    iget v2, p0, Lj0/n;->b:I

    invoke-direct {v0, v2, v1, p1}, Lj0/n$a;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
