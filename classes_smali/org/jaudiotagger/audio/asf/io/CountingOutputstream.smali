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

    const-class v0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getCount()J
    .registers 3

    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-wide v0
.end method

.method public write(I)V
    .registers 6

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-void
.end method

.method public write([B)V
    .registers 6

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-void
.end method

.method public write([BII)V
    .registers 6

    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/io/CountingOutputstream;->count:J

    return-void
.end method
