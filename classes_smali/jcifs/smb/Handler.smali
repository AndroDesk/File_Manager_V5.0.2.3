.class public Ljcifs/smb/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field public static final SMB_HANDLER:Ljava/net/URLStreamHandler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljcifs/smb/Handler;

    .line 3
    invoke-direct {v0}, Ljcifs/smb/Handler;-><init>()V

    .line 6
    sput-object v0, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .registers 2

    const/16 v0, 0x1bd

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3

    .line 1
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 3
    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    .line 6
    return-object v0
.end method

.method public parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "smb://"

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_11

    .line 13
    add-int/lit8 p4, p4, 0x2

    .line 15
    const-string p2, "smb:////"

    .line 17
    goto :goto_2f

    .line 18
    :cond_11
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2f

    .line 24
    if-eqz v0, :cond_2f

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2f

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "//"

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    add-int/lit8 p4, p4, 0x2

    .line 48
    :cond_2f
    :goto_2f
    invoke-super {p0, p1, p2, p3, p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    .line 51
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    .line 58
    move-result-object p3

    .line 59
    if-eqz p3, :cond_51

    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    const/16 p2, 0x23

    .line 72
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    :cond_51
    move-object v7, p2

    .line 83
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    .line 86
    move-result p2

    .line 87
    const/4 p3, -0x1

    .line 88
    if-ne p2, p3, :cond_5d

    .line 90
    invoke-virtual {p0}, Ljcifs/smb/Handler;->getDefaultPort()I

    .line 93
    move-result p2

    .line 94
    :cond_5d
    move v4, p2

    .line 95
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 110
    move-result-object v8

    .line 111
    const/4 v9, 0x0

    .line 112
    const-string v2, "smb"

    .line 114
    move-object v0, p0

    .line 115
    move-object v1, p1

    .line 116
    invoke-virtual/range {v0 .. v9}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
