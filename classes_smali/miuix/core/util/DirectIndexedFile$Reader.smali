.class public Lmiuix/core/util/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

.field private mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

.field private mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiuix/core/util/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    const-string p1, "assets"

    .line 5
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiuix/core/util/DirectIndexedFile$DataInputRandom;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 8
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructFromFile(Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    :try_start_3
    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    invoke-interface {p1, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 11
    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 13
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$200(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 19
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 22
    move-result-object p1

    .line 23
    array-length p1, p1

    .line 24
    new-array p1, p1, [Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 26
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 28
    const/4 p1, 0x0

    .line 29
    move v0, p1

    .line 30
    :goto_1d
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 32
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 35
    move-result-object v1

    .line 36
    array-length v1, v1

    .line 37
    if-ge v0, v1, :cond_f4

    .line 39
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 41
    new-instance v2, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;-><init>(Lmiuix/core/util/DirectIndexedFile$1;)V

    .line 47
    aput-object v2, v1, v0

    .line 49
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 51
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 53
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 56
    move-result-object v2

    .line 57
    aget-object v2, v2, v0

    .line 59
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$500(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J

    .line 62
    move-result-wide v2

    .line 63
    invoke-interface {v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 66
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 68
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    .line 71
    move-result v1

    .line 72
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 74
    aget-object v2, v2, v0

    .line 76
    new-array v3, v1, [Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 78
    invoke-static {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$602(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 81
    move v2, p1

    .line 82
    :goto_51
    if-ge v2, v1, :cond_66

    .line 84
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 86
    aget-object v3, v3, v0

    .line 88
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 94
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->access$700(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 97
    move-result-object v4

    .line 98
    aput-object v4, v3, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_51

    .line 103
    :cond_66
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 105
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 107
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 110
    move-result-object v2

    .line 111
    aget-object v2, v2, v0

    .line 113
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$800(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;)J

    .line 116
    move-result-wide v2

    .line 117
    invoke-interface {v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 120
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 122
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    .line 125
    move-result v1

    .line 126
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 128
    aget-object v2, v2, v0

    .line 130
    invoke-static {v2, p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$902(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 133
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 135
    aget-object v2, v2, v0

    .line 137
    new-array v3, v1, [Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 139
    invoke-static {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1002(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 142
    move v2, p1

    .line 143
    :goto_8e
    if-ge v2, v1, :cond_b4

    .line 145
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 147
    aget-object v3, v3, v0

    .line 149
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 152
    move-result-object v3

    .line 153
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 155
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1100(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 158
    move-result-object v4

    .line 159
    aput-object v4, v3, v2

    .line 161
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 163
    aget-object v3, v3, v0

    .line 165
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 168
    move-result-object v4

    .line 169
    aget-object v4, v4, v2

    .line 171
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 174
    move-result v4

    .line 175
    invoke-static {v3, v4}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$912(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 180
    goto :goto_8e

    .line 181
    :cond_b4
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 183
    aget-object v2, v2, v0

    .line 185
    new-array v3, v1, [[Ljava/lang/Object;

    .line 187
    invoke-static {v2, v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1302(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;

    .line 190
    move v2, p1

    .line 191
    :goto_be
    if-ge v2, v1, :cond_f0

    .line 193
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 195
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 197
    aget-object v4, v4, v0

    .line 199
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 202
    move-result-object v4

    .line 203
    aget-object v4, v4, v2

    .line 205
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)J

    .line 208
    move-result-wide v4

    .line 209
    invoke-interface {v3, v4, v5}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 212
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 214
    aget-object v3, v3, v0

    .line 216
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    .line 219
    move-result-object v3

    .line 220
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 222
    aget-object v4, v4, v0

    .line 224
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 227
    move-result-object v4

    .line 228
    aget-object v4, v4, v2

    .line 230
    iget-object v5, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 232
    invoke-static {v4, v5}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1500(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    .line 235
    move-result-object v4

    .line 236
    aput-object v4, v3, v2
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_ed} :catch_f5

    .line 238
    add-int/lit8 v2, v2, 0x1

    .line 240
    goto :goto_be

    .line 241
    :cond_f0
    add-int/lit8 v0, v0, 0x1

    .line 243
    goto/16 :goto_1d

    .line 245
    :cond_f4
    return-void

    .line 246
    :catch_f5
    move-exception p1

    .line 247
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Reader;->close()V

    .line 250
    throw p1
.end method

.method private offset(II)J
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 3
    aget-object v0, v0, p1

    .line 5
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 8
    move-result-object v0

    .line 9
    array-length v0, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_3d

    .line 13
    add-int v2, v0, v1

    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 17
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 19
    aget-object v3, v3, p1

    .line 21
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 24
    move-result-object v3

    .line 25
    aget-object v3, v3, v2

    .line 27
    iget v3, v3, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 29
    if-le v3, p2, :cond_20

    .line 31
    move v0, v2

    .line 32
    goto :goto_a

    .line 33
    :cond_20
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 35
    aget-object v1, v1, p1

    .line 37
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 40
    move-result-object v1

    .line 41
    aget-object v1, v1, v2

    .line 43
    iget v1, v1, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 45
    if-gt v1, p2, :cond_32

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 49
    move v1, v2

    .line 50
    goto :goto_a

    .line 51
    :cond_32
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 53
    aget-object v0, v0, p1

    .line 55
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 58
    move-result-object v0

    .line 59
    aget-object v0, v0, v2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    :goto_3e
    const-wide/16 v1, -0x1

    .line 65
    if-eqz v0, :cond_52

    .line 67
    iget-wide v1, v0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 69
    iget v0, v0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 71
    sub-int/2addr p2, v0

    .line 72
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 74
    aget-object p1, v0, p1

    .line 76
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$900(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)I

    .line 79
    move-result p1

    .line 80
    mul-int/2addr p2, p1

    .line 81
    int-to-long p1, p2

    .line 82
    add-long/2addr v1, p1

    .line 83
    :cond_52
    return-wide v1
.end method

.method private readSingleDataItem(III)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 3
    aget-object v0, v0, p1

    .line 5
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    aget-object v0, v0, p2

    .line 11
    aget-object v0, v0, p3

    .line 13
    if-nez v0, :cond_40

    .line 15
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 17
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 19
    aget-object v1, v1, p1

    .line 21
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 24
    move-result-object v1

    .line 25
    aget-object v1, v1, p2

    .line 27
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)J

    .line 30
    move-result-wide v1

    .line 31
    const-wide/16 v3, 0x4

    .line 33
    add-long/2addr v1, v3

    .line 34
    invoke-interface {v0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 37
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 39
    aget-object v0, v0, p1

    .line 41
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    aget-object v0, v0, p2

    .line 47
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 49
    aget-object v1, v1, p1

    .line 51
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 54
    move-result-object v1

    .line 55
    aget-object v1, v1, p2

    .line 57
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 59
    invoke-static {v1, v2, p3}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Lmiuix/core/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v0, p3

    .line 65
    :cond_40
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    .line 67
    aget-object p1, v0, p1

    .line 69
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 73
    aget-object p1, p1, p2

    .line 75
    aget-object p1, p1, p3

    .line 77
    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    .line 4
    if-eqz v0, :cond_8

    .line 6
    :try_start_5
    invoke-interface {v0}, Lmiuix/core/util/DirectIndexedFile$InputFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_11

    .line 9
    :catch_8
    :cond_8
    const/4 v0, 0x0

    .line 10
    :try_start_9
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    .line 12
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 14
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_12d

    if-ltz p1, :cond_106

    .line 2
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    array-length v1, v0

    if-ge p1, v1, :cond_106

    if-ltz p3, :cond_d9

    .line 3
    aget-object v0, v0, p1

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_d9

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v0

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_34

    .line 6
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p2, p1

    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p3

    aget-object p1, p1, v3
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_135

    goto/16 :goto_ce

    .line 7
    :cond_34
    :try_start_34
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v2, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    :goto_39
    if-gt v3, p3, :cond_cd

    .line 8
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_138

    .line 9
    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_aa

    .line 10
    :pswitch_57  #0x9
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_9e

    .line 11
    :pswitch_62  #0x8
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_9e

    .line 12
    :pswitch_6d  #0x7
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_9e

    .line 13
    :pswitch_78  #0x6
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {p2}, Ljava/io/DataInput;->readByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_82} :catch_d0
    .catchall {:try_start_34 .. :try_end_82} :catchall_135

    goto :goto_9e

    .line 14
    :pswitch_83  #0x1, 0x2, 0x3, 0x4, 0x5
    :try_start_83
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    .line 15
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    .line 16
    invoke-static {v0, v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    if-ne v3, p3, :cond_9e

    .line 17
    invoke-direct {p0, p1, p3, v0}, Lmiuix/core/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object p2
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_9e} :catch_a1
    .catchall {:try_start_83 .. :try_end_9e} :catchall_135

    :cond_9e
    :goto_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :catch_a1
    move-exception p1

    .line 18
    :try_start_a2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 19
    :goto_aa
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v0, p1

    .line 20
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_cd} :catch_d0
    .catchall {:try_start_a2 .. :try_end_cd} :catchall_135

    :cond_cd
    move-object p1, p2

    .line 21
    :goto_ce
    monitor-exit p0

    return-object p1

    :catch_d0
    move-exception p1

    .line 22
    :try_start_d1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Seek data from a corrupt file"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 23
    :cond_d9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " out of range[0, "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, p3, p1

    .line 24
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_106
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Kind "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range[0, "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_12d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_135
    .catchall {:try_start_d1 .. :try_end_135} :catchall_135

    :catchall_135
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_83  #00000001
        :pswitch_83  #00000002
        :pswitch_83  #00000003
        :pswitch_83  #00000004
        :pswitch_83  #00000005
        :pswitch_78  #00000006
        :pswitch_6d  #00000007
        :pswitch_62  #00000008
        :pswitch_57  #00000009
    .end packed-switch
.end method

.method public declared-synchronized get(II)[Ljava/lang/Object;
    .registers 10

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    if-eqz v0, :cond_109

    if-ltz p1, :cond_f2

    .line 28
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    array-length v0, v0

    if-ge p1, v0, :cond_f2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    invoke-direct {p0, p1, p2}, Lmiuix/core/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v0

    .line 31
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p2, p2, p1

    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p2

    array-length p2, p2

    new-array v2, p2, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-gez v3, :cond_3b

    move v0, v4

    :goto_26
    if-ge v0, p2, :cond_39

    .line 32
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    aput-object v1, v2, v0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_111

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 33
    :cond_39
    monitor-exit p0

    return-object v2

    .line 34
    :cond_3b
    :try_start_3b
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v3, v0, v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V

    :goto_40
    if-ge v4, p2, :cond_e7

    .line 35
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_114

    .line 36
    new-instance p2, Ljava/lang/IllegalStateException;

    goto :goto_c4

    .line 37
    :pswitch_5e  #0x9
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_b8

    .line 38
    :pswitch_6b  #0x8
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_b8

    .line 39
    :pswitch_78  #0x7
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v2, v4

    goto :goto_b8

    .line 40
    :pswitch_85  #0x6
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v4
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_91} :catch_e9
    .catchall {:try_start_3b .. :try_end_91} :catchall_111

    goto :goto_b8

    .line 41
    :pswitch_92  #0x1, 0x2, 0x3, 0x4, 0x5
    :try_start_92
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    .line 42
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v1

    .line 43
    invoke-static {v0, v1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Ljava/io/DataInput;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 44
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v1}, Lmiuix/core/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v5

    .line 45
    invoke-direct {p0, p1, v4, v0}, Lmiuix/core/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v4

    .line 46
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mFile:Lmiuix/core/util/DirectIndexedFile$InputFile;

    invoke-interface {v0, v5, v6}, Lmiuix/core/util/DirectIndexedFile$InputFile;->seek(J)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_b8} :catch_bb
    .catchall {:try_start_92 .. :try_end_b8} :catchall_111

    :goto_b8
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :catch_bb
    move-exception p1

    .line 47
    :try_start_bc
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "File may be corrupt due to invalid data index size"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 48
    :goto_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mIndexData:[Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;

    aget-object p1, v1, p1

    .line 49
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiuix/core/util/DirectIndexedFile$Reader$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_e7} :catch_e9
    .catchall {:try_start_bc .. :try_end_e7} :catchall_111

    .line 50
    :cond_e7
    monitor-exit p0

    return-object v2

    :catch_e9
    move-exception p1

    .line 51
    :try_start_ea
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Seek data from a corrupt file"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 52
    :cond_f2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get data kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_109
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Get data from a corrupt file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_111
    .catchall {:try_start_ea .. :try_end_111} :catchall_111

    :catchall_111
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_92  #00000001
        :pswitch_92  #00000002
        :pswitch_92  #00000003
        :pswitch_92  #00000004
        :pswitch_92  #00000005
        :pswitch_85  #00000006
        :pswitch_78  #00000007
        :pswitch_6b  #00000008
        :pswitch_5e  #00000009
    .end packed-switch
.end method

.method public getDataVersion()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Reader;->mHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$1600(Lmiuix/core/util/DirectIndexedFile$FileHeader;)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method
