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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    iput-object p2, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection$CacheStream;->collector:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
