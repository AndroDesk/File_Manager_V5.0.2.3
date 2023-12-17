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
.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 9
    return-void
.end method

.method private getLineNumber(J)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_25

    .line 7
    aget v2, v1, v0

    .line 9
    int-to-long v2, v2

    .line 10
    cmp-long v2, p1, v2

    .line 12
    if-ltz v2, :cond_22

    .line 14
    array-length v2, v1

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 17
    if-ge v0, v2, :cond_18

    .line 19
    add-int/lit8 v2, v0, 0x1

    .line 21
    aget v1, v1, v2

    .line 23
    int-to-long v1, v1

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    const-wide v1, 0x7fffffffffffffffL

    .line 30
    :goto_1d
    cmp-long v1, p1, v1

    .line 32
    if-gez v1, :cond_22

    .line 34
    return v0

    .line 35
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_25
    const/4 p1, -0x1

    .line 39
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

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_87

    .line 6
    if-eqz p1, :cond_87

    .line 8
    array-length v0, v0

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v2

    .line 13
    if-eq v0, v2, :cond_10

    .line 15
    goto/16 :goto_87

    .line 17
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x0

    .line 25
    move v2, v0

    .line 26
    :goto_19
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 28
    array-length v3, v3

    .line 29
    if-ge v2, v3, :cond_55

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/CharSequence;

    .line 37
    new-instance v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 39
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 41
    invoke-direct {v4, v5}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 44
    iput-object v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 46
    if-lez v2, :cond_3a

    .line 48
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 50
    add-int/lit8 v5, v2, -0x1

    .line 52
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move-object v3, v1

    .line 60
    :goto_3b
    if-eqz v3, :cond_4a

    .line 62
    iget v5, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 64
    iget-object v3, v3, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 66
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 69
    move-result v3

    .line 70
    add-int/2addr v3, v5

    .line 71
    iget v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 73
    add-int/2addr v3, v5

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move v3, v0

    .line 76
    :goto_4b
    iput v3, v4, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 78
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_19

    .line 86
    :cond_55
    const-string p1, ""

    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 90
    :goto_59
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result p1

    .line 96
    if-ge v0, p1, :cond_86

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 116
    iget-object v1, v1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\r\n"

    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    goto :goto_59

    .line 135
    :cond_86
    return-void

    .line 136
    :cond_87
    :goto_87
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 138
    iput-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 140
    return-void
.end method


# virtual methods
.method public getAfterLines(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 10
    move-result p1

    .line 11
    if-gez p1, :cond_f

    .line 13
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 15
    return-object p1

    .line 16
    :cond_f
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 18
    array-length p2, p2

    .line 19
    add-int/lit8 p2, p2, -0x1

    .line 21
    if-ge p1, p2, :cond_37

    .line 23
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 31
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 35
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    move-result p1

    .line 41
    add-int/2addr p1, v0

    .line 42
    iget v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 44
    add-int/2addr p1, v0

    .line 45
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_37
    return-object v1
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_21

    .line 13
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 21
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 24
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 26
    iget v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    .line 28
    sub-int/2addr p1, v1

    .line 29
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    return-object v1
.end method

.method public getLastLine(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_26

    .line 13
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 23
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 27
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 32
    move-result p1

    .line 33
    add-int/2addr p1, v0

    .line 34
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_26
    return-object v1
.end method

.method public getLine(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 10
    move-result p1

    .line 11
    const/4 p2, -0x1

    .line 12
    if-eq p1, p2, :cond_25

    .line 14
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 22
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 24
    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 26
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 31
    move-result p1

    .line 32
    add-int/2addr p1, v0

    .line 33
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_25
    return-object v1
.end method

.method public getNextLine(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    .line 10
    move-result p1

    .line 11
    const/4 p2, -0x1

    .line 12
    if-lt p1, p2, :cond_2e

    .line 14
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 16
    array-length p2, p2

    .line 17
    add-int/lit8 p2, p2, -0x1

    .line 19
    if-ge p1, p2, :cond_2e

    .line 21
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 25
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    .line 31
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    .line 35
    iget-object p1, p1, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    move-result p1

    .line 41
    add-int/2addr p1, v0

    .line 42
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
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

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    .line 3
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    .line 6
    return-void
.end method
