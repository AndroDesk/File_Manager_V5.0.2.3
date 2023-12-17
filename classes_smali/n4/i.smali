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
.method public constructor <init>(Lm4/n;[CLa/b;Ln4/h$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p3, p4}, Ln4/b;-><init>(Lm4/n;La/b;Ln4/h$a;)V

    .line 4
    iput-object p2, p0, Ln4/i;->f:[C

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lm4/m;)J
    .registers 10

    .line 1
    check-cast p1, Ln4/i$a;

    .line 3
    iget-object p1, p1, Ln4/i$a;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Ln4/i;->h(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    const-wide/16 v0, 0x0

    .line 15
    move-wide v2, v0

    .line 16
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_2b

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lm4/g;

    .line 28
    iget-object v5, v4, Lm4/b;->o:Lm4/l;

    .line 30
    if-eqz v5, :cond_27

    .line 32
    iget-wide v5, v5, Lm4/l;->c:J

    .line 34
    cmp-long v7, v5, v0

    .line 36
    if-lez v7, :cond_27

    .line 38
    add-long/2addr v2, v5

    .line 39
    goto :goto_f

    .line 40
    :cond_27
    iget-wide v4, v4, Lm4/b;->h:J

    .line 42
    add-long/2addr v2, v4

    .line 43
    goto :goto_f

    .line 44
    :cond_2b
    return-wide v2
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 13

    .line 1
    check-cast p1, Ln4/i$a;

    .line 3
    iget-object v0, p1, Ln4/i$a;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Ln4/i;->h(Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    :try_start_8
    iget-object v1, p1, Lm4/m;->a:Ljava/lang/Object;

    .line 11
    check-cast v1, Lm4/i;

    .line 13
    iget-object v2, p0, Ln4/b;->d:Lm4/n;

    .line 15
    invoke-static {v2}, La/b;->s(Lm4/n;)Lk4/h;

    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Ln4/i;->g:Lk4/h;

    .line 21
    new-instance v2, Lk4/k;

    .line 23
    iget-object v3, p0, Ln4/i;->g:Lk4/h;

    .line 25
    iget-object v4, p0, Ln4/i;->f:[C

    .line 27
    invoke-direct {v2, v3, v4, v1}, Lk4/k;-><init>(Lk4/h;[CLm4/i;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_8d

    .line 30
    :try_start_1d
    iget-object v1, p1, Lm4/m;->a:Ljava/lang/Object;

    .line 32
    check-cast v1, Lm4/i;

    .line 34
    iget v1, v1, Lm4/i;->b:I

    .line 36
    new-array v1, v1, [B

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 42
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_78

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    move-object v5, v3

    .line 53
    check-cast v5, Lm4/g;

    .line 55
    iget-object v3, p0, Ln4/i;->g:Lk4/h;

    .line 57
    invoke-virtual {v3, v5}, Lk4/h;->a(Lm4/g;)V

    .line 60
    iget-object v3, p1, Ln4/i$a;->d:Ljava/lang/String;

    .line 62
    iget-object v4, p1, Ln4/i$a;->c:Ljava/lang/String;

    .line 64
    invoke-static {v3}, La/b;->O(Ljava/lang/String;)Z

    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_46

    .line 70
    goto :goto_4c

    .line 71
    :cond_46
    invoke-static {v4}, Lo4/a;->n(Ljava/lang/String;)Z

    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4e

    .line 77
    :goto_4c
    move-object v7, v3

    .line 78
    goto :goto_6e

    .line 79
    :cond_4e
    const-string v6, "/"

    .line 81
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_58

    .line 87
    const-string v6, ""

    .line 89
    :cond_58
    iget-object v7, v5, Lm4/b;->k:Ljava/lang/String;

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    goto :goto_4c

    .line 111
    :goto_6e
    iget-object v6, p1, Ln4/i$a;->b:Ljava/lang/String;

    .line 113
    move-object v3, p0

    .line 114
    move-object v4, v2

    .line 115
    move-object v8, p2

    .line 116
    move-object v9, v1

    .line 117
    invoke-virtual/range {v3 .. v9}, Ln4/b;->g(Lk4/k;Lm4/g;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    :try_end_77
    .catchall {:try_start_1d .. :try_end_77} :catchall_83

    .line 120
    goto :goto_29

    .line 121
    :cond_78
    :try_start_78
    invoke-virtual {v2}, Lk4/k;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8d

    .line 124
    iget-object p1, p0, Ln4/i;->g:Lk4/h;

    .line 126
    if-eqz p1, :cond_82

    .line 128
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_82
    return-void

    .line 132
    :catchall_83
    move-exception p1

    .line 133
    :try_start_84
    invoke-virtual {v2}, Lk4/k;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    .line 136
    goto :goto_8c

    .line 137
    :catchall_88
    move-exception p2

    .line 138
    :try_start_89
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 141
    :goto_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_8d

    .line 142
    :catchall_8d
    move-exception p1

    .line 143
    iget-object p2, p0, Ln4/i;->g:Lk4/h;

    .line 145
    if-eqz p2, :cond_95

    .line 147
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 150
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

    .line 1
    invoke-static {p1}, Lo4/a;->n(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_23

    .line 7
    iget-object v0, p0, Ln4/b;->d:Lm4/n;

    .line 9
    invoke-static {v0, p1}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 22
    const-string v1, "No file found with name "

    .line 24
    const-string v2, " in zip file"

    .line 26
    invoke-static {v1, p1, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    sget-object v1, Lnet/lingala/zip4j/exception/ZipException$Type;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 32
    invoke-direct {v0, p1, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    .line 35
    throw v0

    .line 36
    :cond_23
    iget-object v0, p0, Ln4/b;->d:Lm4/n;

    .line 38
    iget-object v0, v0, Lm4/n;->b:Lo1/a;

    .line 40
    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    .line 42
    check-cast v0, Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4c

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lm4/g;

    .line 65
    iget-object v3, v2, Lm4/b;->k:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_34

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_34

    .line 77
    :cond_4c
    return-object v1
.end method
