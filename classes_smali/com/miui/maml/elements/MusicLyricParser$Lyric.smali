.class public Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;,
        Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;
    }
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

.field private mIsModified:Z

.field private mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 6
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;-><init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 17
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 19
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 21
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 25
    iput-boolean p3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 27
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 29
    const/4 p3, -0x1

    .line 30
    const-string v0, "\n"

    .line 32
    invoke-direct {p1, p3, v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 37
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result p2

    .line 43
    invoke-direct {p1, p2, v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 48
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private getTimeFromLyricShot(ID)J
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    if-lt p1, v0, :cond_20

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 17
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 19
    sub-int/2addr p1, v0

    .line 20
    mul-int/lit16 p1, p1, 0x1f40

    .line 22
    add-int/2addr p1, v1

    .line 23
    int-to-long v0, p1

    .line 24
    const-wide v2, 0x40bf400000000000L  # 8000.0

    .line 29
    mul-double/2addr p2, v2

    .line 30
    double-to-long p1, p2

    .line 31
    add-long/2addr v0, p1

    .line 32
    goto :goto_46

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 41
    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 43
    int-to-double v0, v0

    .line 44
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 46
    add-int/lit8 v3, p1, 0x1

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 54
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 56
    iget-object v3, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 64
    iget p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 66
    sub-int/2addr v2, p1

    .line 67
    int-to-double v2, v2

    .line 68
    mul-double/2addr v2, p2

    .line 69
    add-double/2addr v2, v0

    .line 70
    double-to-long v0, v2

    .line 71
    :goto_46
    return-wide v0
.end method


# virtual methods
.method public addOffset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 3
    iget v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 11
    return-void
.end method

.method public correctLyric(Lcom/miui/maml/elements/MusicLyricParser$LyricShot;ID)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 4
    move-result v0

    .line 5
    if-ltz p2, :cond_3a

    .line 7
    if-gt p2, v0, :cond_3a

    .line 9
    iget v1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 11
    if-ltz v1, :cond_3a

    .line 13
    if-le v1, v0, :cond_f

    .line 15
    goto :goto_3a

    .line 16
    :cond_f
    iget-wide v2, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 18
    invoke-direct {p0, v1, v2, v3}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    .line 21
    move-result-wide v0

    .line 22
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->getTimeFromLyricShot(ID)J

    .line 25
    move-result-wide v2

    .line 26
    const/4 v4, 0x1

    .line 27
    iget v5, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->lineIndex:I

    .line 29
    if-gt p2, v5, :cond_26

    .line 31
    if-ne p2, v5, :cond_27

    .line 33
    iget-wide p1, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 35
    cmpl-double p1, p3, p1

    .line 37
    if-lez p1, :cond_27

    .line 39
    :cond_26
    const/4 v4, 0x0

    .line 40
    :cond_27
    if-nez v4, :cond_2e

    .line 42
    cmp-long p1, v0, v2

    .line 44
    if-lez p1, :cond_2e

    .line 46
    return-void

    .line 47
    :cond_2e
    if-eqz v4, :cond_35

    .line 49
    cmp-long p1, v0, v2

    .line 51
    if-gez p1, :cond_35

    .line 53
    return-void

    .line 54
    :cond_35
    sub-long/2addr v0, v2

    .line 55
    long-to-int p1, v0

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->addOffset(I)V

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method public decorate()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_2d

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 25
    invoke-virtual {v3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->isDecorated()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1f

    .line 31
    goto :goto_2d

    .line 32
    :cond_1f
    :goto_1f
    if-ge v2, v1, :cond_2d

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 40
    invoke-virtual {v3}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->decorate()V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_1f

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public getAfterLines(J)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getAfterLines(J)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getBeforeLines(J)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getBeforeLines(J)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getLastLine(J)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLastLine(J)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getLine(J)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLine(J)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getLyricContent(I)Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
    .registers 3

    .line 1
    if-gez p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 5
    goto :goto_18

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_10

    .line 14
    iget-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 25
    :goto_18
    return-object p1
.end method

.method public getLyricShot(J)Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 3
    iget v0, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 14
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 16
    add-int/2addr v1, v0

    .line 17
    int-to-long v3, v1

    .line 18
    cmp-long v1, v3, p1

    .line 20
    const-wide/16 v3, 0x0

    .line 22
    if-lez v1, :cond_1d

    .line 24
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 26
    invoke-direct {p1, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 29
    return-object p1

    .line 30
    :cond_1d
    const/4 v1, 0x1

    .line 31
    move v2, v1

    .line 32
    :goto_1f
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v5

    .line 38
    if-ge v2, v5, :cond_55

    .line 40
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 48
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 50
    add-int/2addr v5, v0

    .line 51
    int-to-long v6, v5

    .line 52
    cmp-long v6, v6, p1

    .line 54
    if-lez v6, :cond_52

    .line 56
    iget-object v6, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 58
    sub-int/2addr v2, v1

    .line 59
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 65
    iget v1, v1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 67
    add-int/2addr v1, v0

    .line 68
    if-le v5, v1, :cond_4c

    .line 70
    int-to-long v3, v1

    .line 71
    sub-long/2addr p1, v3

    .line 72
    long-to-double p1, p1

    .line 73
    sub-int/2addr v5, v1

    .line 74
    int-to-double v0, v5

    .line 75
    div-double v3, p1, v0

    .line 77
    :cond_4c
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 79
    invoke-direct {p1, v2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 82
    return-object p1

    .line 83
    :cond_52
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_1f

    .line 86
    :cond_55
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 91
    move-result v5

    .line 92
    sub-int/2addr v5, v1

    .line 93
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 99
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 101
    add-int/2addr v2, v0

    .line 102
    int-to-long v5, v2

    .line 103
    sub-long/2addr p1, v5

    .line 104
    const-wide/16 v5, 0x1f40

    .line 106
    cmp-long v0, p1, v5

    .line 108
    if-gez v0, :cond_7f

    .line 110
    long-to-double p1, p1

    .line 111
    const-wide v2, 0x40bf400000000000L  # 8000.0

    .line 116
    div-double/2addr p1, v2

    .line 117
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 119
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->size()I

    .line 122
    move-result v2

    .line 123
    sub-int/2addr v2, v1

    .line 124
    invoke-direct {v0, v2, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 127
    return-object v0

    .line 128
    :cond_7f
    new-instance p1, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;

    .line 130
    iget-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 135
    move-result p2

    .line 136
    invoke-direct {p1, p2, v3, v4}, Lcom/miui/maml/elements/MusicLyricParser$LyricShot;-><init>(ID)V

    .line 139
    return-object p1
.end method

.method public getNextLine(J)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getNextLine(J)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getOpenTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOpenTime:J

    .line 3
    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2d

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 40
    iget-object v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_1b

    .line 46
    :cond_2d
    return-object v0
.end method

.method public getTimeArr()[I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    new-array v0, v0, [I

    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_32

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 38
    add-int/lit8 v4, v1, 0x1

    .line 40
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 42
    iget-object v5, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 44
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 46
    add-int/2addr v3, v5

    .line 47
    aput v3, v0, v1

    .line 49
    move v1, v4

    .line 50
    goto :goto_19

    .line 51
    :cond_32
    return-object v0
.end method

.method public isModified()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mIsModified:Z

    .line 3
    return v0
.end method

.method public recycleContent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    return-void
.end method

.method public resetHeaderOffset()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mHeader:Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 3
    iget v1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mOriginHeaderOffset:I

    .line 5
    iput v1, v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I

    .line 7
    return-void
.end method

.method public set([ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mLyricLocator:Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->set([ILjava/util/ArrayList;)V

    .line 6
    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
