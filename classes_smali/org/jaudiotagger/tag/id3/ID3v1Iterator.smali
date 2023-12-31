.class public Lorg/jaudiotagger/tag/id3/ID3v1Iterator;
.super Ljava/lang/Object;
.source "ID3v1Iterator.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final ALBUM:I = 0x3

.field private static final ARTIST:I = 0x2

.field private static final COMMENT:I = 0x4

.field private static final GENRE:I = 0x6

.field private static final TITLE:I = 0x1

.field private static final TRACK:I = 0x7

.field private static final YEAR:I = 0x5


# instance fields
.field private id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

.field private lastIndex:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 9
    return-void
.end method

.method private hasNext(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_8a

    goto/16 :goto_89

    .line 2
    :pswitch_7  #0x7
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-eqz v3, :cond_89

    .line 3
    check-cast v2, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    iget-byte v2, v2, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-gez v2, :cond_1a

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_1a
    move v0, v1

    :cond_1b
    return v0

    .line 4
    :pswitch_1c  #0x6
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-byte v2, v2, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    if-gez v2, :cond_29

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_29
    move v0, v1

    :cond_2a
    return v0

    .line 5
    :pswitch_2b  #0x5
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3c

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_3d

    :cond_3c
    move v0, v1

    :cond_3d
    return v0

    .line 6
    :pswitch_3e  #0x4
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4f

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_4f
    move v0, v1

    :cond_50
    return v0

    .line 7
    :pswitch_51  #0x3
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_62

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_63

    :cond_62
    move v0, v1

    :cond_63
    return v0

    .line 8
    :pswitch_64  #0x2
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_75

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_76

    :cond_75
    move v0, v1

    :cond_76
    return v0

    .line 9
    :pswitch_77  #0x1
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v2, v2, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_88

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result p1

    if-eqz p1, :cond_89

    :cond_88
    move v0, v1

    :cond_89
    :goto_89
    return v0

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_77  #00000001
        :pswitch_64  #00000002
        :pswitch_51  #00000003
        :pswitch_3e  #00000004
        :pswitch_2b  #00000005
        :pswitch_1c  #00000006
        :pswitch_7  #00000007
    .end packed-switch
.end method

.method private next(I)Ljava/lang/Object;
    .registers 3

    .line 2
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    packed-switch v0, :pswitch_data_a6

    .line 3
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Iteration has no more elements."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_d  #0x6
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    iget-byte v0, v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-ltz v0, :cond_23

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return-object p1

    .line 5
    :pswitch_25  #0x5
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-byte v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    if-ltz v0, :cond_30

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_36

    :cond_30
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p1

    :goto_36
    return-object p1

    .line 6
    :pswitch_37  #0x4
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_46

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    goto :goto_4c

    :cond_46
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p1

    :goto_4c
    return-object p1

    .line 7
    :pswitch_4d  #0x3
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5c

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    goto :goto_62

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p1

    :goto_62
    return-object p1

    .line 8
    :pswitch_63  #0x2
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_72

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    goto :goto_78

    :cond_72
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p1

    :goto_78
    return-object p1

    .line 9
    :pswitch_79  #0x1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_88

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    goto :goto_8e

    :cond_88
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p1

    :goto_8e
    return-object p1

    .line 10
    :pswitch_8f  #0x0
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object v0, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9e

    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    iget-object p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    goto :goto_a4

    :cond_9e
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object p1

    :goto_a4
    return-object p1

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_8f  #00000000
        :pswitch_79  #00000001
        :pswitch_63  #00000002
        :pswitch_4d  #00000003
        :pswitch_37  #00000004
        :pswitch_25  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->hasNext(I)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    invoke-direct {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->next(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->lastIndex:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, ""

    .line 6
    packed-switch v0, :pswitch_data_2c

    .line 9
    goto :goto_2b

    .line 10
    :pswitch_9  #0x1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 12
    iput-object v2, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 14
    :pswitch_d  #0x2
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 16
    iput-object v2, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 18
    :pswitch_11  #0x3
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 20
    iput-object v2, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 22
    :pswitch_15  #0x4
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 24
    iput-object v2, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 26
    :pswitch_19  #0x5
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 28
    iput-object v2, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 30
    :pswitch_1d  #0x6
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 32
    iput-byte v1, v0, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 34
    :pswitch_21  #0x7
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v1Iterator;->id3v1tag:Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 36
    instance-of v2, v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 38
    if-eqz v2, :cond_2b

    .line 40
    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 42
    iput-byte v1, v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 44
    :cond_2b
    :goto_2b
    return-void

    .line 45
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_9  #00000001
        :pswitch_d  #00000002
        :pswitch_11  #00000003
        :pswitch_15  #00000004
        :pswitch_19  #00000005
        :pswitch_1d  #00000006
        :pswitch_21  #00000007
    .end packed-switch
.end method
