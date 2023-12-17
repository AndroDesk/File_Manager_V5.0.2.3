.class public final Lm4/d;
.super Lm4/m;
.source "EndOfCentralDirectoryRecord.java"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm4/m;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lm4/d;->h:Ljava/lang/String;

    .line 8
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 10
    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    .line 12
    return-void
.end method
