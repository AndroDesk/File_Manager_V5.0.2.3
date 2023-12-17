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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->a:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->b:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->c:Z

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->d:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->e:Z

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->f:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->g:Lnet/lingala/zip4j/model/enums/AesVersion;

    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->h:Z

    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->i:J

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->j:Ljava/lang/String;

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->k:Ljava/lang/String;

    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->l:J

    iget-wide v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->m:J

    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->n:Z

    iget-boolean v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:Z

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->p:Ljava/lang/String;

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->q:Ljava/lang/String;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->q:Ljava/lang/String;

    iget-object v0, p1, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    return-void
.end method
