.class public final Ln4/e$a;
.super Lm4/m;
.source "AddFilesToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lm4/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lm4/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lm4/m;-><init>(Lm4/i;)V

    .line 4
    iput-object p1, p0, Ln4/e$a;->b:Ljava/util/List;

    .line 6
    iput-object p2, p0, Ln4/e$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    .line 8
    return-void
.end method
