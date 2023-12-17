.class public final Lm4/h;
.super Lm4/b;
.source "LocalFileHeader.java"


# instance fields
.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm4/b;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    return-void
.end method
