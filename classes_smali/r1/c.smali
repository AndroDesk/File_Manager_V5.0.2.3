.class public final Lr1/c;
.super Lr1/d;
.source "KssUploadFile.java"


# instance fields
.field public final synthetic d:Lr1/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr1/j;)V
    .registers 4

    iput-object p1, p0, Lr1/c;->d:Lr1/j;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lr1/d;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lr1/c;->d:Lr1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Ls1/l;
    .registers 3

    new-instance v0, Ls1/k;

    iget-object v1, p0, Lr1/c;->d:Lr1/j;

    invoke-direct {v0, v1}, Ls1/k;-><init>(Lr1/j;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lr1/c;->d:Lr1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method
