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
    check-cast p1, Ln4/e$a;

    .line 3
    iget-object v0, p1, Ln4/e$a;->b:Ljava/util/List;

    .line 5
    iget-object p1, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 7
    invoke-virtual {p0, v0, p1}, Ln4/a;->i(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 8

    .line 1
    check-cast p1, Ln4/e$a;

    .line 3
    iget-object v0, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 5
    if-eqz v0, :cond_7f

    .line 7
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 9
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 11
    if-eq v1, v2, :cond_19

    .line 13
    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 15
    if-ne v1, v2, :cond_11

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 20
    const-string p2, "unsupported compression type"

    .line 22
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    :cond_19
    :goto_19
    iget-boolean v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 28
    if-eqz v1, :cond_3b

    .line 30
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 32
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 34
    if-eq v0, v1, :cond_33

    .line 36
    iget-object v0, p0, Ln4/a;->e:[C

    .line 38
    if-eqz v0, :cond_2b

    .line 40
    array-length v0, v0

    .line 41
    if-lez v0, :cond_2b

    .line 43
    goto :goto_3f

    .line 44
    :cond_2b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 46
    const-string p2, "input password is empty or null"

    .line 48
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    :cond_33
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 54
    const-string p2, "Encryption method has to be set, when encrypt files flag is set"

    .line 56
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_3b
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 62
    iput-object v1, v0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 64
    :goto_3f
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p1, Ln4/e$a;->b:Ljava/util/List;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v1

    .line 75
    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_75

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/io/File;

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {v2}, Lo4/a;->k(Ljava/io/File;)Z

    .line 93
    move-result v3

    .line 94
    iget-object v4, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 96
    iget-object v4, v4, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 98
    if-eqz v3, :cond_4a

    .line 100
    sget-object v3, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_4a

    .line 108
    iget-object v3, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 110
    invoke-static {v2, v3}, Lo4/a;->d(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/util/ArrayList;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 117
    goto :goto_4a

    .line 118
    :cond_75
    iget-object v1, p1, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 120
    iget-object p1, p1, Lm4/m;->a:Ljava/lang/Object;

    .line 122
    check-cast p1, Lm4/i;

    .line 124
    invoke-virtual {p0, v0, p1, v1, p2}, Ln4/a;->g(Ljava/util/ArrayList;Lm4/i;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 127
    return-void

    .line 128
    :cond_7f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 130
    const-string p2, "cannot validate zip parameters"

    .line 132
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1
.end method

.method public final d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 3
    return-object v0
.end method
