.class public final Ln4/f;
.super Ln4/a;
.source "AddFolderToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/a<",
        "Ln4/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lm4/n;[CLj4/a;Ln4/h$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ln4/a;-><init>(Lm4/n;[CLj4/a;Ln4/h$a;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lm4/m;)J
    .registers 4

    .line 1
    check-cast p1, Ln4/f$a;

    .line 3
    iget-object v0, p1, Ln4/f$a;->b:Ljava/io/File;

    .line 5
    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 7
    invoke-static {v0, v1}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 13
    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    .line 15
    if-eqz v1, :cond_15

    .line 17
    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_15
    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 24
    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    .line 26
    if-eqz v1, :cond_20

    .line 28
    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_20
    iget-object p1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 35
    invoke-virtual {p0, v0, p1}, Ln4/a;->i(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

    .line 38
    move-result-wide v0

    .line 39
    return-wide v0
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 6

    .line 1
    check-cast p1, Ln4/f$a;

    .line 3
    iget-object v0, p1, Ln4/f$a;->b:Ljava/io/File;

    .line 5
    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 7
    invoke-static {v0, v1}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 13
    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    .line 15
    if-eqz v1, :cond_15

    .line 17
    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_15
    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    .line 24
    iget-object v2, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 26
    iget-boolean v2, v2, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    .line 28
    if-eqz v2, :cond_39

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_2c

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    goto :goto_3d

    .line 45
    :cond_2c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    :goto_3d
    iget-object v2, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 64
    iput-object v1, v2, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    .line 66
    iget-object p1, p1, Lm4/m;->a:Ljava/lang/Object;

    .line 68
    check-cast p1, Lm4/i;

    .line 70
    invoke-virtual {p0, v0, p1, v2, p2}, Ln4/a;->g(Ljava/util/ArrayList;Lm4/i;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 73
    return-void
.end method
