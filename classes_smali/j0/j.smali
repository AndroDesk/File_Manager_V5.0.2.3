.class public final Lj0/j;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ll0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll0/a<",
        "Lj0/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj0/j;->a:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Lj0/k$a;

    .line 3
    sget-object v0, Lj0/k;->c:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    sget-object v1, Lj0/k;->d:Landroidx/collection/f;

    .line 8
    iget-object v2, p0, Lj0/j;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    if-nez v2, :cond_13

    .line 18
    monitor-exit v0

    .line 19
    goto :goto_2c

    .line 20
    :cond_13
    iget-object v3, p0, Lj0/j;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_2d

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_2c

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ll0/a;

    .line 39
    invoke-interface {v1, p1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_1a

    .line 45
    :cond_2c
    :goto_2c
    return-void

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method
