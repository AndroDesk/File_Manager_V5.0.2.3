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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm4/n;[CLj4/a;Ln4/h$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ln4/a;-><init>(Lm4/n;[CLj4/a;Ln4/h$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lm4/m;)J
    .registers 4

    check-cast p1, Ln4/f$a;

    iget-object v0, p1, Ln4/f$a;->b:Ljava/io/File;

    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-static {v0, v1}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    if-eqz v1, :cond_15

    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    if-eqz v1, :cond_20

    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object p1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p0, v0, p1}, Ln4/a;->i(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 6

    check-cast p1, Ln4/f$a;

    iget-object v0, p1, Ln4/f$a;->b:Ljava/io/File;

    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-static {v0, v1}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iget-boolean v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    if-eqz v1, :cond_15

    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v1, p1, Ln4/f$a;->b:Ljava/io/File;

    iget-object v2, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iget-boolean v2, v2, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    if-eqz v2, :cond_39

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_2c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_39
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    :goto_3d
    iget-object v2, p1, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iput-object v1, v2, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    iget-object p1, p1, Lm4/m;->a:Ljava/lang/Object;

    check-cast p1, Lm4/i;

    invoke-virtual {p0, v0, p1, v2, p2}, Ln4/a;->g(Ljava/util/ArrayList;Lm4/i;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method
