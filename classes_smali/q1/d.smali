.class public final Lq1/d;
.super Lq1/f;
.source "KssDownloadFile.java"


# instance fields
.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/io/File;)V
    .registers 5

    .line 1
    iput-object p4, p0, Lq1/d;->c:Ljava/io/File;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lq1/f;-><init>(Ljava/io/File;J)V

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq1/d;->c:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Lq1/c;
    .registers 3

    .line 1
    new-instance v0, Lq1/g;

    .line 3
    iget-object v1, p0, Lq1/d;->c:Ljava/io/File;

    .line 5
    invoke-direct {v0, v1}, Lq1/g;-><init>(Ljava/io/File;)V

    .line 8
    return-object v0
.end method

.method public final c(ZJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lq1/d;->c:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_50

    .line 9
    if-eqz p1, :cond_1c

    .line 11
    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1c

    .line 19
    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 24
    move-result-wide v0

    .line 25
    cmp-long p1, v0, p2

    .line 27
    if-lez p1, :cond_59

    .line 29
    :cond_1c
    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    .line 31
    sget-object p2, Ls1/d;->a:Ljava/io/File;

    .line 33
    if-eqz p1, :cond_37

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_29

    .line 41
    goto :goto_37

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_32

    .line 48
    invoke-static {p1}, Ls1/d;->a(Ljava/io/File;)V

    .line 51
    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    move-result p1

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    :goto_37
    const/4 p1, 0x1

    .line 57
    :goto_38
    if-eqz p1, :cond_3b

    .line 59
    goto :goto_59

    .line 60
    :cond_3b
    new-instance p1, Ljava/lang/SecurityException;

    .line 62
    const-string p2, "Failed delete target file. Can\'t download to dest path: "

    .line 64
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object p2

    .line 68
    iget-object p3, p0, Lq1/d;->c:Ljava/io/File;

    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1

    .line 81
    :cond_50
    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public final d(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-lez v0, :cond_b

    .line 7
    iget-object v0, p0, Lq1/d;->c:Ljava/io/File;

    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    .line 12
    :cond_b
    return-void
.end method
