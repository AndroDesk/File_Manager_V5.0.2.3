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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/lifecycle/LiveData$b;->c:I

    iput-object p2, p0, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/r;

    return-void
.end method


# virtual methods
.method public final e(Z)V
    .registers 7

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$b;->b:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->b:Z

    iget-object v0, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    iget v2, v0, Landroidx/lifecycle/LiveData;->c:I

    add-int/2addr p1, v2

    iput p1, v0, Landroidx/lifecycle/LiveData;->c:I

    iget-boolean p1, v0, Landroidx/lifecycle/LiveData;->d:Z

    if-eqz p1, :cond_19

    goto :goto_3d

    :cond_19
    iput-boolean v1, v0, Landroidx/lifecycle/LiveData;->d:Z

    :goto_1b
    const/4 p1, 0x0

    :try_start_1c
    iget v3, v0, Landroidx/lifecycle/LiveData;->c:I

    if-eq v2, v3, :cond_3b

    if-nez v2, :cond_26

    if-lez v3, :cond_26

    move v4, v1

    goto :goto_27

    :cond_26
    move v4, p1

    :goto_27
    if-lez v2, :cond_2d

    if-nez v3, :cond_2d

    move v2, v1

    goto :goto_2e

    :cond_2d
    move v2, p1

    :goto_2e
    if-eqz v4, :cond_34

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->g()V

    goto :goto_39

    :cond_34
    if-eqz v2, :cond_39

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->h()V
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_47

    :cond_39
    :goto_39
    move v2, v3

    goto :goto_1b

    :cond_3b
    iput-boolean p1, v0, Landroidx/lifecycle/LiveData;->d:Z

    :goto_3d
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->b:Z

    if-eqz p1, :cond_46

    iget-object p1, p0, Landroidx/lifecycle/LiveData$b;->d:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$b;)V

    :cond_46
    return-void

    :catchall_47
    move-exception v1

    iput-boolean p1, v0, Landroidx/lifecycle/LiveData;->d:Z

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
