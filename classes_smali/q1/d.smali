.class public final Lq1/d;
.super Lq1/f;
.source "KssDownloadFile.java"


# instance fields
.field public final synthetic c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLjava/io/File;)V
    .registers 5

    iput-object p4, p0, Lq1/d;->c:Ljava/io/File;

    invoke-direct {p0, p1, p2, p3}, Lq1/f;-><init>(Ljava/io/File;J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final b()Lq1/c;
    .registers 3

    new-instance v0, Lq1/g;

    iget-object v1, p0, Lq1/d;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Lq1/g;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final c(ZJ)V
    .registers 6

    iget-object v0, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-lez p1, :cond_59

    :cond_1c
    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    sget-object p2, Ls1/d;->a:Ljava/io/File;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_29

    goto :goto_37

    :cond_29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-static {p1}, Ls1/d;->a(Ljava/io/File;)V

    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, 0x1

    :goto_38
    if-eqz p1, :cond_3b

    goto :goto_59

    :cond_3b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed delete target file. Can\'t download to dest path: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    iget-object p1, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_59
    :goto_59
    return-void
.end method

.method public final d(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lq1/d;->c:Ljava/io/File;

    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    :cond_b
    return-void
.end method
