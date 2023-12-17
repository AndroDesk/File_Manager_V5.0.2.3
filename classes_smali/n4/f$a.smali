.class public final Ln4/f$a;
.super Lm4/m;
.source "AddFolderToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/io/File;

.field public final c:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lm4/i;)V
    .registers 4

    invoke-direct {p0, p3}, Lm4/m;-><init>(Lm4/i;)V

    iput-object p1, p0, Ln4/f$a;->b:Ljava/io/File;

    iput-object p2, p0, Ln4/f$a;->c:Lnet/lingala/zip4j/model/ZipParameters;

    return-void
.end method
