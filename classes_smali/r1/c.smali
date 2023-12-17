.class public final Lr1/c;
.super Lr1/d;
.source "KssUploadFile.java"


# instance fields
.field public final synthetic d:Lr1/j;


# direct methods
.method public constructor <init>(Lr1/j;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lr1/c;->d:Lr1/j;

    .line 3
    const/4 p1, 0x0

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p1, v0, v1}, Lr1/d;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    return-void
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lr1/c;->d:Lr1/j;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public final c()Ls1/l;
    .registers 3

    .line 1
    new-instance v0, Ls1/k;

    .line 3
    iget-object v1, p0, Lr1/c;->d:Lr1/j;

    .line 5
    invoke-direct {v0, v1}, Ls1/k;-><init>(Lr1/j;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lr1/c;->d:Lr1/j;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0
.end method
