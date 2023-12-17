.class public final Ln4/e;
.super Ln4/a;
.source "AddFilesToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/a<",
        "Ln4/e$a;",
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

    check-cast p1, Ln4/e$a;

    iget-object v0, p1, Ln4/e$a;->b:Ljava/util/List;

    iget-object p1, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p0, v0, p1}, Ln4/a;->i(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 8

    check-cast p1, Ln4/e$a;

    iget-object v0, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    if-eqz v0, :cond_7f

    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v1, v2, :cond_19

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v1, v2, :cond_11

    goto :goto_19

    :cond_11
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "unsupported compression type"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_19
    iget-boolean v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    if-eqz v1, :cond_3b

    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq v0, v1, :cond_33

    iget-object v0, p0, Ln4/a;->e:[C

    if-eqz v0, :cond_2b

    array-length v0, v0

    if-lez v0, :cond_2b

    goto :goto_3f

    :cond_2b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Encryption method has to be set, when encrypt files flag is set"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    :goto_3f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Ln4/e$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lo4/a;->k(Ljava/io/File;)Z

    move-result v3

    iget-object v4, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iget-object v4, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    if-eqz v3, :cond_4a

    sget-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    iget-object v3, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-static {v2, v3}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4a

    :cond_75
    iget-object v1, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    iget-object p1, p1, Lm4/m;->a:Ljava/lang/Object;

    check-cast p1, Lm4/i;

    invoke-virtual {p0, v0, p1, v1, p2}, Ln4/a;->g(Ljava/util/ArrayList;Lm4/i;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void

    :cond_7f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot validate zip parameters"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
