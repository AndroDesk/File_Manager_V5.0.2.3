.class public Ljcifs/smb/SmbAuthException;
.super Ljcifs/smb/SmbException;
.source "SmbAuthException.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
