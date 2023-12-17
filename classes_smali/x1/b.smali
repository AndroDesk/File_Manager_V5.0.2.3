.class public Lx1/b;
.super Ljava/lang/Object;
.source "WpsRequestData.java"


# instance fields
.field public fileUri:Landroid/net/Uri;

.field public inputPathStr:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public outPathStr:Ljava/lang/String;

.field public resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lx1/b;->fileUri:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lx1/b;->mimeType:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lx1/b;->outPathStr:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lx1/b;->resolution:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/b;->fileUri:Landroid/net/Uri;

    .line 3
    return-object v0
.end method

.method public getInputPathStr()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/b;->mimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOutPathStr()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/b;->outPathStr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lx1/b;->resolution:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setFileUri(Landroid/net/Uri;)Lx1/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lx1/b;->fileUri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method public setInputPathStr(Ljava/lang/String;)Lx1/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lx1/b;->inputPathStr:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lx1/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lx1/b;->mimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setOutPathStr(Ljava/lang/String;)Lx1/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lx1/b;->outPathStr:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setResolution(Ljava/lang/String;)Lx1/b;
    .registers 2

    .line 1
    iput-object p1, p0, Lx1/b;->resolution:Ljava/lang/String;

    .line 3
    return-object p0
.end method
