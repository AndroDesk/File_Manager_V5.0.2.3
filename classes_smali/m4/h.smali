.class public final Lm4/h;
.super Lm4/b;
.source "LocalFileHeader.java"


# instance fields
.field public t:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm4/b;-><init>()V

    .line 4
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 6
    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method
