.class public final Lr1/b;
.super Lr1/d;
.source "KssUploadFile.java"


# instance fields
.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;)V
    .registers 6

    .line 1
    iput-object p5, p0, Lr1/b;->d:Ljava/io/File;

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lr1/d;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 6
    return-void
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    iget-object v1, p0, Lr1/b;->d:Ljava/io/File;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    return-object v0
.end method

.method public final c()Ls1/l;
    .registers 3

    .line 1
    new-instance v0, Ls1/k;

    .line 3
    iget-object v1, p0, Lr1/b;->d:Ljava/io/File;

    .line 5
    invoke-direct {v0, v1}, Ls1/k;-><init>(Ljava/io/File;)V

    .line 8
    return-object v0
.end method

.method public final d()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr1/b;->d:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    iget-object v0, p0, Lr1/b;->d:Ljava/io/File;

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1f

    .line 17
    iget-object v0, p0, Lr1/b;->d:Ljava/io/File;

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x0

    .line 25
    cmp-long v0, v0, v2

    .line 27
    if-gtz v0, :cond_1d

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 33
    :goto_20
    return v0
.end method
