.class public final Lr1/b;
.super Lr1/d;
.source "KssUploadFile.java"


# instance fields
.field public final synthetic d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;)V
    .registers 6

    iput-object p5, p0, Lr1/b;->d:Ljava/io/File;

    invoke-direct {p0, p1, p2, p3, p4}, Lr1/d;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lr1/b;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final c()Ls1/l;
    .registers 3

    new-instance v0, Ls1/k;

    iget-object v1, p0, Lr1/b;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Ls1/k;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final d()Z
    .registers 5

    iget-object v0, p0, Lr1/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lr1/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lr1/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method
