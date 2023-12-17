.class public Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;
.super Ljava/io/OutputStream;
.source "CountingOutputstream.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:J

.field private final wrapped:Ljava/io/OutputStream;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;

    .line 3
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    .line 8
    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 6
    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    return-void
.end method

.method public getCount()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    .line 3
    return-wide v0
.end method

.method public write(I)V
    .registers 6

    .line 5
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-void
.end method

.method public write([B)V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-void
.end method

.method public write([BII)V
    .registers 6

    .line 3
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-wide p1, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-void
.end method
