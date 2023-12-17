.class public Lpl/droidsonroids/gif/GifIOException;
.super Ljava/io/IOException;
.source "GifIOException.java"


# static fields
.field private static final serialVersionUID:J = 0xbdbbd5fa1b9L


# instance fields
.field private final mErrnoMessage:Ljava/lang/String;

.field public final reason:Lpl/droidsonroids/gif/GifError;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 4
    invoke-static {p1}, Lpl/droidsonroids/gif/GifError;->fromCode(I)Lpl/droidsonroids/gif/GifError;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/GifError;

    .line 10
    iput-object p2, p0, Lpl/droidsonroids/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static fromCode(I)Lpl/droidsonroids/gif/GifIOException;
    .registers 3

    .line 1
    sget-object v0, Lpl/droidsonroids/gif/GifError;->NO_ERROR:Lpl/droidsonroids/gif/GifError;

    .line 3
    iget v0, v0, Lpl/droidsonroids/gif/GifError;->errorCode:I

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne p0, v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    new-instance v0, Lpl/droidsonroids/gif/GifIOException;

    .line 11
    invoke-direct {v0, p0, v1}, Lpl/droidsonroids/gif/GifIOException;-><init>(ILjava/lang/String;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/GifError;

    .line 7
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifError;->getFormattedDescription()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v1, p0, Lpl/droidsonroids/gif/GifIOException;->reason:Lpl/droidsonroids/gif/GifError;

    .line 19
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifError;->getFormattedDescription()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ": "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lpl/droidsonroids/gif/GifIOException;->mErrnoMessage:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
