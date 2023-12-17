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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm4/m;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lm4/d;->h:Ljava/lang/String;

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    iput-object v0, p0, Lm4/m;->a:Ljava/lang/Object;

    return-void
.end method
