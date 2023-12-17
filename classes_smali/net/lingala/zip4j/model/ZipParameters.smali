.class public final Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;
.source "ZipParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    }
.end annotation


# instance fields
.field public a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public c:Z

.field public d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field public e:Z

.field public f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public g:Lnet/lingala/zip4j/model/enums/AesVersion;

.field public h:Z

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:J

.field public m:J

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field public s:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 3
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 5
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    .line 7
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 8
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 9
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    const-wide/16 v1, -0x1

    .line 11
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 12
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 13
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    .line 14
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 17
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 19
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    .line 21
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 22
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 23
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    const-wide/16 v1, -0x1

    .line 25
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 26
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 27
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    .line 28
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 29
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 30
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 31
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 32
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 33
    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 34
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    .line 35
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 36
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 37
    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    .line 38
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    .line 39
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 40
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 41
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 42
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 43
    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    .line 44
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    .line 45
    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    .line 46
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    .line 47
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    .line 51
    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 52
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    .line 53
    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 54
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    .line 55
    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 56
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    .line 57
    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    .line 58
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    .line 59
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->q:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->q:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 64
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget-boolean p1, p1, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    .line 67
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    return-void
.end method
