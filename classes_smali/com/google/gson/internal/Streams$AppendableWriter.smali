.class final Lcom/google/gson/internal/Streams$AppendableWriter;
.super Ljava/io/Writer;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppendableWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private final currentWrite:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 4
    new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 6
    invoke-direct {v0}, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 11
    iput-object p1, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    iput-object p1, v0, Lcom/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    .line 2
    iget-object p1, p0, Lcom/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {p1, v0, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
