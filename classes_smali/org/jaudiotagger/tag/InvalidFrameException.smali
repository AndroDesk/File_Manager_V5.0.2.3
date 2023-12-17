.class public Lorg/jaudiotagger/tag/InvalidFrameException;
.super Lorg/jaudiotagger/tag/InvalidTagException;
.source "InvalidFrameException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
