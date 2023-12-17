.class public Ljcifs/smb/DosFileFilter;
.super Ljava/lang/Object;
.source "DosFileFilter.java"

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# instance fields
.field public attributes:I

.field public wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 6
    iput p2, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAttributes()I

    .line 4
    move-result p1

    .line 5
    iget v0, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    .line 7
    and-int/2addr p1, v0

    .line 8
    if-eqz p1, :cond_b

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method
