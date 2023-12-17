.class public abstract Landroidx/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public final synthetic d:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/lifecycle/LiveData$b;->c:I

    .line 9
    iput-object p2, p0, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/r;

    .line 11
    return-void
.end method


# virtual methods
.method public final e(Z)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$b;->b:Z

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->b:Z

    .line 8
    iget-object v0, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    move p1, v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, -0x1

    .line 16
    :goto_f
    iget v2, v0, Landroidx/lifecycle/LiveData;->c:I

    .line 18
    add-int/2addr p1, v2

    .line 19
    iput p1, v0, Landroidx/lifecycle/LiveData;->c:I

    .line 21
    iget-boolean p1, v0, Landroidx/lifecycle/LiveData;->d:Z

    .line 23
    if-eqz p1, :cond_19

    .line 25
    goto :goto_3d

    .line 26
    :cond_19
    iput-boolean v1, v0, Landroidx/lifecycle/LiveData;->d:Z

    .line 28
    :goto_1b
    const/4 p1, 0x0

    .line 29
    :try_start_1c
    iget v3, v0, Landroidx/lifecycle/LiveData;->c:I

    .line 31
    if-eq v2, v3, :cond_3b

    .line 33
    if-nez v2, :cond_26

    .line 35
    if-lez v3, :cond_26

    .line 37
    move v4, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v4, p1

    .line 40
    :goto_27
    if-lez v2, :cond_2d

    .line 42
    if-nez v3, :cond_2d

    .line 44
    move v2, v1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v2, p1

    .line 47
    :goto_2e
    if-eqz v4, :cond_34

    .line 49
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->g()V

    .line 52
    goto :goto_39

    .line 53
    :cond_34
    if-eqz v2, :cond_39

    .line 55
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->h()V
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_47

    .line 58
    :cond_39
    :goto_39
    move v2, v3

    .line 59
    goto :goto_1b

    .line 60
    :cond_3b
    iput-boolean p1, v0, Landroidx/lifecycle/LiveData;->d:Z

    .line 62
    :goto_3d
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->b:Z

    .line 64
    if-eqz p1, :cond_46

    .line 66
    iget-object p1, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;

    .line 68
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$b;)V

    .line 71
    :cond_46
    return-void

    .line 72
    :catchall_47
    move-exception v1

    .line 73
    iput-boolean p1, v0, Landroidx/lifecycle/LiveData;->d:Z

    .line 75
    throw v1
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g(Landroidx/lifecycle/m;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract h()Z
.end method
