.class public Ljcifs/util/transport/TransportException;
.super Ljava/io/IOException;
.source "TransportException.java"


# instance fields
.field private rootCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Ljcifs/util/transport/TransportException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/util/transport/TransportException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/util/transport/TransportException;->rootCause:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/util/transport/TransportException;->rootCause:Ljava/lang/Throwable;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    new-instance v0, Ljava/io/StringWriter;

    .line 7
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 10
    new-instance v1, Ljava/io/PrintWriter;

    .line 12
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    iget-object v2, p0, Ljcifs/util/transport/TransportException;->rootCause:Ljava/lang/Throwable;

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v2, "\n"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2d
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
