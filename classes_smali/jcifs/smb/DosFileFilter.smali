.class public Ljcifs/smb/DosFileFilter;
.super Ljava/lang/Object;
.source "DosFileFilter.java"

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# instance fields
.field public attributes:I

.field public wildcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .registers 3

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result p1

    iget v0, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
