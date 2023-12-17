.class Ljcifs/http/NtlmHttpURLConnection$CacheStream;
.super Ljava/io/OutputStream;
.source "NtlmHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/http/NtlmHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheStream"
.end annotation


# instance fields
.field private final collector:Ljava/io/OutputStream;

.field private final stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    .line 6
    iput-object p2, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 11
    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 11
    return-void
.end method

.method public write(I)V
    .registers 3

    .line 5
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
