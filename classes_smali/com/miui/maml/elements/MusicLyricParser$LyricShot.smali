.class public Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricShot"
.end annotation


# instance fields
.field public lineIndex:I

.field public percent:D


# direct methods
.method public constructor <init>(ID)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 6
    iput-wide p2, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 8
    return-void
.end method
