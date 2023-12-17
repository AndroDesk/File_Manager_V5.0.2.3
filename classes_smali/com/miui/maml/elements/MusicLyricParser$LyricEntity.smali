.class public Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricEntity"
.end annotation


# static fields
.field private static final HTML_BR_PATTERN:Ljava/lang/String; = "%s<br/>"


# instance fields
.field public lyric:Ljava/lang/CharSequence;

.field public time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 6
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 8
    return-void
.end method


# virtual methods
.method public decorate()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const-string v1, "%s<br/>"

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 21
    return-void
.end method

.method public isDecorated()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 3
    instance-of v0, v0, Ljava/lang/String;

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method
