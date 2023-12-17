.class public final Ln4/i;
.super Ln4/b;
.source "ExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/b<",
        "Ln4/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field public f:[C

.field public g:Lk4/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm4/n;[CLa/b;Ln4/h$a;)V
    .registers 5

    invoke-direct {p0, p1, p3, p4}, Ln4/b;-><init>(Lm4/n;La/b;Ln4/h$a;)V

    iput-object p2, p0, Ln4/i;->f:[C

    return-void
.end method


# virtual methods
.method public final a(Lm4/m;)J
    .registers 10

    check-cast p1, Ln4/i$a;

    iget-object p1, p1, Ln4/i$a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ln4/i;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm4/g;

    iget-object v5, v4, Lm4/b;->o:Lm4/l;

    if-eqz v5, :cond_27

    iget-wide v5, v5, Lm4/l;->c:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_27

    add-long/2addr v2, v5

    goto :goto_f

    :cond_27
    iget-wide v4, v4, Lm4/b;->h:J

    add-long/2addr v2, v4

    goto :goto_f

    :cond_2b
    return-wide v2
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 13

    check-cast p1, Ln4/i$a;

    iget-object v0, p1, Ln4/i$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ln4/i;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :try_start_8
    iget-object v1, p1, Lm4/m;->a:Ljava/lang/Object;

    check-cast v1, Lm4/i;

    iget-object v2, p0, Ln4/b;->d:Lm4/n;

    invoke-static {v2}, La/b;->s(Lm4/n;)Lk4/h;

    move-result-object v2

    iput-object v2, p0, Ln4/i;->g:Lk4/h;

    new-instance v2, Lk4/k;

    iget-object v3, p0, Ln4/i;->g:Lk4/h;

    iget-object v4, p0, Ln4/i;->f:[C

    invoke-direct {v2, v3, v4, v1}, Lk4/k;-><init>(Lk4/h;[CLm4/i;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_8d

    :try_start_1d
    iget-object v1, p1, Lm4/m;->a:Ljava/lang/Object;

    check-cast v1, Lm4/i;

    iget v1, v1, Lm4/i;->b:I

    new-array v1, v1, [B

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lm4/g;

    iget-object v3, p0, Ln4/i;->g:Lk4/h;

    invoke-virtual {v3, v5}, Lk4/h;->a(Lm4/g;)V

    iget-object v3, p1, Ln4/i$a;->d:Ljava/lang/String;

    iget-object v4, p1, Ln4/i$a;->c:Ljava/lang/String;

    invoke-static {v3}, La/b;->O(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_4c

    :cond_46
    invoke-static {v4}, Lo4/a;->n(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4e

    :goto_4c
    move-object v7, v3

    goto :goto_6e

    :cond_4e
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    const-string v6, ""

    :cond_58
    iget-object v7, v5, Lm4/b;->k:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :goto_6e
    iget-object v6, p1, Ln4/i$a;->b:Ljava/lang/String;

    move-object v3, p0

    move-object v4, v2

    move-object v8, p2

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Ln4/b;->g(Lk4/k;Lm4/g;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    :try_end_77
    .catchall {:try_start_1d .. :try_end_77} :catchall_83

    goto :goto_29

    :cond_78
    :try_start_78
    invoke-virtual {v2}, Lk4/k;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8d

    iget-object p1, p0, Ln4/i;->g:Lk4/h;

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_82
    return-void

    :catchall_83
    move-exception p1

    :try_start_84
    invoke-virtual {v2}, Lk4/k;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8c

    :catchall_88
    move-exception p2

    :try_start_89
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p1

    iget-object p2, p0, Ln4/i;->g:Lk4/h;

    if-eqz p2, :cond_95

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_95
    throw p1
.end method

.method public final h(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lm4/g;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lo4/a;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Ln4/b;->d:Lm4/n;

    invoke-static {v0, p1}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "No file found with name "

    const-string v2, " in zip file"

    invoke-static {v1, p1, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lnet/lingala/zip4j/exception/ZipException$Type;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v0, p1, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v0

    :cond_23
    iget-object v0, p0, Ln4/b;->d:Lm4/n;

    iget-object v0, v0, Lm4/n;->b:Lo1/a;

    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm4/g;

    iget-object v3, v2, Lm4/b;->k:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4c
    return-object v1
.end method
