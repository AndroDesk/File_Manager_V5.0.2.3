.class Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LyricLocator"
.end annotation


# instance fields
.field public final CRLF_LENGTH:I

.field public mFullLyric:Ljava/lang/String;

.field public mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field public mTimeArr:[I

.field public final synthetic this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    return-void
.end method

.method private getLineNumber(J)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v1

    if-ge v0, v2, :cond_25

    aget v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_22

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_18

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-long v1, v1

    goto :goto_1d

    :cond_18
    const-wide v1, 0x7fffffffffffffffL

    :goto_1d
    cmp-long v1, p1, v1

    if-gez v1, :cond_22

    return v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 p1, -0x1

    return p1
.end method

.method private inflateLyricLines(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    if-eqz p1, :cond_87

    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_10

    goto/16 :goto_87

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v2, v0

    :goto_19
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v3, v3

    if-ge v2, v3, :cond_55

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v4, v5}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    if-lez v2, :cond_3a

    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    goto :goto_3b

    :cond_3a
    move-object v3, v1

    :goto_3b
    if-eqz v3, :cond_4a

    iget v5, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v3, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v5

    iget v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v3, v5

    goto :goto_4b

    :cond_4a
    move v3, v0

    :goto_4b
    iput v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_55
    const-string p1, ""

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    :goto_59
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_86

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v1, v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_86
    return-void

    :cond_87
    :goto_87
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAfterLines(J)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    if-gez p1, :cond_f

    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    return-object p1

    :cond_f
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_37

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    return-object v1
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    if-lez p1, :cond_21

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    const/4 v0, 0x0

    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    sub-int/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    return-object v1
.end method

.method public getLastLine(J)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    if-lez p1, :cond_26

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    return-object v1
.end method

.method public getLine(J)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_25

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    return-object v1
.end method

.method public getNextLine(J)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result p1

    const/4 p2, -0x1

    if-lt p1, p2, :cond_2e

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2e

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    return-object v1
.end method

.method public set([ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    return-void
.end method
