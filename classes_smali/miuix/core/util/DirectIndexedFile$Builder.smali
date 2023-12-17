.class public Lmiuix/core/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;,
        Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiuix/core/util/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

.field private mFileDataVersion:I

.field private mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

.field private mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 4
    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    return-void
.end method

.method public synthetic constructor <init>(ILmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private build()V
    .registers 15

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 9
    iget v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, v0, v2, v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(IILmiuix/core/util/DirectIndexedFile$1;)V

    .line 15
    iput-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_9a

    .line 21
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 29
    iget-object v5, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 31
    invoke-static {v5}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 34
    move-result-object v5

    .line 35
    new-instance v12, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 37
    const-wide/16 v7, 0x0

    .line 39
    const-wide/16 v9, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    move-object v6, v12

    .line 43
    invoke-direct/range {v6 .. v11}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiuix/core/util/DirectIndexedFile$1;)V

    .line 46
    aput-object v12, v5, v2

    .line 48
    move v5, v1

    .line 49
    :goto_30
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v6

    .line 57
    if-ge v5, v6, :cond_4e

    .line 59
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4b

    .line 75
    goto :goto_4e

    .line 76
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    .line 78
    goto :goto_30

    .line 79
    :cond_4e
    :goto_4e
    new-array v5, v5, [Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 81
    invoke-static {v4, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3402(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 84
    move v5, v1

    .line 85
    :goto_54
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 88
    move-result-object v6

    .line 89
    array-length v6, v6

    .line 90
    if-ge v5, v6, :cond_96

    .line 92
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Ljava/util/ArrayList;

    .line 102
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 111
    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    .line 114
    move-result v9

    .line 115
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v7

    .line 119
    add-int/lit8 v7, v7, -0x1

    .line 121
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v6

    .line 125
    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 127
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    .line 130
    move-result v6

    .line 131
    add-int/lit8 v10, v6, 0x1

    .line 133
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 136
    move-result-object v6

    .line 137
    new-instance v7, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 139
    const-wide/16 v11, 0x0

    .line 141
    const/4 v13, 0x0

    .line 142
    move-object v8, v7

    .line 143
    invoke-direct/range {v8 .. v13}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiuix/core/util/DirectIndexedFile$1;)V

    .line 146
    aput-object v7, v6, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 150
    goto :goto_54

    .line 151
    :cond_96
    add-int/lit8 v2, v2, 0x1

    .line 153
    goto/16 :goto_12

    .line 155
    :cond_9a
    :try_start_9a
    invoke-direct {p0, v3}, Lmiuix/core/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9d

    .line 158
    :catch_9d
    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    const-string v1, "Please add a data kind before adding group"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private checkCurrentIndexingGroup()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 4
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 6
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v1, "Please add a data group before adding data"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 6
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 9
    move-result-object v3

    .line 10
    array-length v3, v3

    .line 11
    if-ge v1, v3, :cond_1a2

    .line 13
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 15
    invoke-static {v3, p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$3700(Lmiuix/core/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    .line 18
    move-result v3

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 22
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 25
    move-result-object v3

    .line 26
    aget-object v3, v3, v1

    .line 28
    int-to-long v4, v2

    .line 29
    invoke-static {v3, v4, v5}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$502(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J

    .line 32
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 40
    if-eqz p1, :cond_31

    .line 42
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 45
    move-result-object v4

    .line 46
    array-length v4, v4

    .line 47
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 50
    :cond_31
    add-int/lit8 v2, v2, 0x4

    .line 52
    move v4, v0

    .line 53
    :goto_34
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 56
    move-result-object v5

    .line 57
    array-length v5, v5

    .line 58
    if-ge v4, v5, :cond_49

    .line 60
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 63
    move-result-object v5

    .line 64
    aget-object v5, v5, v4

    .line 66
    invoke-static {v5, p1}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->access$3800(Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    .line 69
    move-result v5

    .line 70
    add-int/2addr v2, v5

    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 73
    goto :goto_34

    .line 74
    :cond_49
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    .line 76
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    .line 79
    move-result-object v4

    .line 80
    aget-object v4, v4, v1

    .line 82
    int-to-long v5, v2

    .line 83
    invoke-static {v4, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$802(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J

    .line 86
    if-eqz p1, :cond_5f

    .line 88
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 91
    move-result-object v4

    .line 92
    array-length v4, v4

    .line 93
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 96
    :cond_5f
    add-int/lit8 v2, v2, 0x4

    .line 98
    move v4, v0

    .line 99
    :goto_62
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 102
    move-result-object v5

    .line 103
    array-length v5, v5

    .line 104
    if-ge v4, v5, :cond_77

    .line 106
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 109
    move-result-object v5

    .line 110
    aget-object v5, v5, v4

    .line 112
    invoke-static {v5, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    .line 115
    move-result v5

    .line 116
    add-int/2addr v2, v5

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_62

    .line 120
    :cond_77
    move v4, v0

    .line 121
    :goto_78
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 124
    move-result-object v5

    .line 125
    array-length v5, v5

    .line 126
    if-ge v4, v5, :cond_a5

    .line 128
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 131
    move-result-object v5

    .line 132
    aget-object v5, v5, v4

    .line 134
    int-to-long v6, v2

    .line 135
    invoke-static {v5, v6, v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1402(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;J)J

    .line 138
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 141
    move-result-object v5

    .line 142
    aget-object v5, v5, v4

    .line 144
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 154
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$4000(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    .line 157
    move-result-object v6

    .line 158
    invoke-static {v5, p1, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$4100(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    .line 161
    move-result v5

    .line 162
    add-int/2addr v2, v5

    .line 163
    add-int/lit8 v4, v4, 0x1

    .line 165
    goto :goto_78

    .line 166
    :cond_a5
    move v4, v0

    .line 167
    :goto_a6
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 170
    move-result-object v5

    .line 171
    array-length v5, v5

    .line 172
    if-ge v4, v5, :cond_19e

    .line 174
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 177
    move-result-object v5

    .line 178
    aget-object v5, v5, v4

    .line 180
    int-to-long v6, v2

    .line 181
    iput-wide v6, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 183
    if-nez p1, :cond_e5

    .line 185
    move v5, v0

    .line 186
    move v6, v5

    .line 187
    :goto_ba
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 190
    move-result-object v7

    .line 191
    array-length v7, v7

    .line 192
    if-ge v5, v7, :cond_cf

    .line 194
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 197
    move-result-object v7

    .line 198
    aget-object v7, v7, v5

    .line 200
    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 203
    move-result v7

    .line 204
    add-int/2addr v6, v7

    .line 205
    add-int/lit8 v5, v5, 0x1

    .line 207
    goto :goto_ba

    .line 208
    :cond_cf
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 211
    move-result-object v5

    .line 212
    aget-object v5, v5, v4

    .line 214
    iget v5, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 216
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 219
    move-result-object v7

    .line 220
    aget-object v7, v7, v4

    .line 222
    iget v7, v7, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 224
    sub-int/2addr v5, v7

    .line 225
    mul-int/2addr v5, v6

    .line 226
    add-int/2addr v5, v2

    .line 227
    move v2, v5

    .line 228
    goto/16 :goto_19a

    .line 230
    :cond_e5
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 233
    move-result-object v5

    .line 234
    aget-object v5, v5, v4

    .line 236
    iget v5, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 238
    :goto_ed
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 241
    move-result-object v6

    .line 242
    aget-object v6, v6, v4

    .line 244
    iget v6, v6, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 246
    if-ge v5, v6, :cond_19a

    .line 248
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    .line 251
    move-result-object v6

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-result-object v6

    .line 260
    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 262
    if-nez v6, :cond_10b

    .line 264
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2600(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 267
    move-result-object v6

    .line 268
    :cond_10b
    move v7, v0

    .line 269
    :goto_10c
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 272
    move-result-object v8

    .line 273
    array-length v8, v8

    .line 274
    if-ge v7, v8, :cond_196

    .line 276
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 279
    move-result-object v8

    .line 280
    aget-object v8, v8, v7

    .line 282
    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 285
    move-result v8

    .line 286
    const/4 v9, 0x1

    .line 287
    if-ne v8, v9, :cond_130

    .line 289
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    .line 292
    move-result-object v8

    .line 293
    aget-object v8, v8, v7

    .line 295
    check-cast v8, Ljava/lang/Integer;

    .line 297
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 300
    move-result v8

    .line 301
    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    .line 304
    goto :goto_187

    .line 305
    :cond_130
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 308
    move-result-object v8

    .line 309
    aget-object v8, v8, v7

    .line 311
    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 314
    move-result v8

    .line 315
    const/4 v9, 0x2

    .line 316
    if-ne v8, v9, :cond_14d

    .line 318
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    .line 321
    move-result-object v8

    .line 322
    aget-object v8, v8, v7

    .line 324
    check-cast v8, Ljava/lang/Integer;

    .line 326
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 329
    move-result v8

    .line 330
    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    .line 333
    goto :goto_187

    .line 334
    :cond_14d
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 337
    move-result-object v8

    .line 338
    aget-object v8, v8, v7

    .line 340
    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 343
    move-result v8

    .line 344
    const/4 v9, 0x4

    .line 345
    if-ne v8, v9, :cond_16a

    .line 347
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    .line 350
    move-result-object v8

    .line 351
    aget-object v8, v8, v7

    .line 353
    check-cast v8, Ljava/lang/Integer;

    .line 355
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 358
    move-result v8

    .line 359
    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 362
    goto :goto_187

    .line 363
    :cond_16a
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 366
    move-result-object v8

    .line 367
    aget-object v8, v8, v7

    .line 369
    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 372
    move-result v8

    .line 373
    const/16 v9, 0x8

    .line 375
    if-ne v8, v9, :cond_187

    .line 377
    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    .line 380
    move-result-object v8

    .line 381
    aget-object v8, v8, v7

    .line 383
    check-cast v8, Ljava/lang/Long;

    .line 385
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 388
    move-result-wide v8

    .line 389
    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    .line 392
    :cond_187
    :goto_187
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 395
    move-result-object v8

    .line 396
    aget-object v8, v8, v7

    .line 398
    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    .line 401
    move-result v8

    .line 402
    add-int/2addr v2, v8

    .line 403
    add-int/lit8 v7, v7, 0x1

    .line 405
    goto/16 :goto_10c

    .line 407
    :cond_196
    add-int/lit8 v5, v5, 0x1

    .line 409
    goto/16 :goto_ed

    .line 411
    :cond_19a
    :goto_19a
    add-int/lit8 v4, v4, 0x1

    .line 413
    goto/16 :goto_a6

    .line 415
    :cond_19e
    add-int/lit8 v1, v1, 0x1

    .line 417
    goto/16 :goto_3

    .line 419
    :cond_1a2
    return v2
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    .line 4
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 6
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 9
    move-result-object v0

    .line 10
    array-length v0, v0

    .line 11
    array-length v1, p2

    .line 12
    if-ne v0, v1, :cond_233

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_e
    array-length v1, p2

    .line 16
    if-ge v0, v1, :cond_204

    .line 18
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    .line 20
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 22
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 25
    move-result-object v2

    .line 26
    aget-object v2, v2, v0

    .line 28
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result v2

    .line 36
    aget v1, v1, v2

    .line 38
    const-string v2, "Object["

    .line 40
    packed-switch v1, :pswitch_data_24c

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string p2, "Unsupported type of objects "

    .line 47
    const-string v1, ", "

    .line 49
    invoke-static {p2, v0, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object p2

    .line 53
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 55
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 58
    move-result-object v1

    .line 59
    aget-object v0, v1, v0

    .line 61
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, " expected"

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1

    .line 81
    :pswitch_50  #0x9
    aget-object v1, p2, v0

    .line 83
    instance-of v1, v1, Ljava/lang/Long;

    .line 85
    if-eqz v1, :cond_58

    .line 87
    goto/16 :goto_1f4

    .line 89
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string p2, "] should be long"

    .line 93
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    :pswitch_64  #0x8
    aget-object v1, p2, v0

    .line 103
    instance-of v1, v1, Ljava/lang/Integer;

    .line 105
    if-eqz v1, :cond_6c

    .line 107
    goto/16 :goto_1f4

    .line 109
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string p2, "] should be int"

    .line 113
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1

    .line 121
    :pswitch_78  #0x7
    aget-object v1, p2, v0

    .line 123
    instance-of v1, v1, Ljava/lang/Short;

    .line 125
    if-eqz v1, :cond_80

    .line 127
    goto/16 :goto_1f4

    .line 129
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    const-string p2, "] should be short"

    .line 133
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    throw p1

    .line 141
    :pswitch_8c  #0x6
    aget-object v1, p2, v0

    .line 143
    instance-of v1, v1, Ljava/lang/Byte;

    .line 145
    if-eqz v1, :cond_94

    .line 147
    goto/16 :goto_1f4

    .line 149
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    const-string p2, "] should be byte"

    .line 153
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p2

    .line 157
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    throw p1

    .line 161
    :pswitch_a0  #0x5
    aget-object v1, p2, v0

    .line 163
    instance-of v1, v1, [J

    .line 165
    if-eqz v1, :cond_db

    .line 167
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 169
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 179
    aget-object v2, p2, v0

    .line 181
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 184
    move-result-object v1

    .line 185
    aput-object v1, p2, v0

    .line 187
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 189
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 192
    move-result-object v1

    .line 193
    aget-object v1, v1, v0

    .line 195
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 197
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 207
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    .line 210
    move-result v2

    .line 211
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    .line 214
    move-result v2

    .line 215
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 218
    goto/16 :goto_1f4

    .line 220
    :cond_db
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 222
    const-string p2, "] should be long[]"

    .line 224
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object p2

    .line 228
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p1

    .line 232
    :pswitch_e7  #0x4
    aget-object v1, p2, v0

    .line 234
    instance-of v1, v1, [I

    .line 236
    if-eqz v1, :cond_122

    .line 238
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 240
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 250
    aget-object v2, p2, v0

    .line 252
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 255
    move-result-object v1

    .line 256
    aput-object v1, p2, v0

    .line 258
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 260
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 263
    move-result-object v1

    .line 264
    aget-object v1, v1, v0

    .line 266
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 268
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 278
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    .line 281
    move-result v2

    .line 282
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    .line 285
    move-result v2

    .line 286
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 289
    goto/16 :goto_1f4

    .line 291
    :cond_122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 293
    const-string p2, "] should be int[]"

    .line 295
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 298
    move-result-object p2

    .line 299
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 302
    throw p1

    .line 303
    :pswitch_12e  #0x3
    aget-object v1, p2, v0

    .line 305
    instance-of v1, v1, [S

    .line 307
    if-eqz v1, :cond_169

    .line 309
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 311
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 321
    aget-object v2, p2, v0

    .line 323
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 326
    move-result-object v1

    .line 327
    aput-object v1, p2, v0

    .line 329
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 331
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 334
    move-result-object v1

    .line 335
    aget-object v1, v1, v0

    .line 337
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 339
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 349
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    .line 352
    move-result v2

    .line 353
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    .line 356
    move-result v2

    .line 357
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 360
    goto/16 :goto_1f4

    .line 362
    :cond_169
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 364
    const-string p2, "] should be short[]"

    .line 366
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 369
    move-result-object p2

    .line 370
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    throw p1

    .line 374
    :pswitch_175  #0x2
    aget-object v1, p2, v0

    .line 376
    instance-of v1, v1, [B

    .line 378
    if-eqz v1, :cond_1af

    .line 380
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 382
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 392
    aget-object v2, p2, v0

    .line 394
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 397
    move-result-object v1

    .line 398
    aput-object v1, p2, v0

    .line 400
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 402
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 405
    move-result-object v1

    .line 406
    aget-object v1, v1, v0

    .line 408
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 410
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 420
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    .line 423
    move-result v2

    .line 424
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    .line 427
    move-result v2

    .line 428
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 431
    goto :goto_1f4

    .line 432
    :cond_1af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 434
    const-string p2, "] should be byte[]"

    .line 436
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 439
    move-result-object p2

    .line 440
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    throw p1

    .line 444
    :pswitch_1bb  #0x1
    aget-object v1, p2, v0

    .line 446
    instance-of v1, v1, Ljava/lang/String;

    .line 448
    if-eqz v1, :cond_1f8

    .line 450
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 452
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    move-result-object v1

    .line 460
    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 462
    aget-object v2, p2, v0

    .line 464
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 467
    move-result-object v1

    .line 468
    aput-object v1, p2, v0

    .line 470
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 472
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 475
    move-result-object v1

    .line 476
    aget-object v1, v1, v0

    .line 478
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 480
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 490
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    .line 493
    move-result v2

    .line 494
    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    .line 497
    move-result v2

    .line 498
    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 501
    :goto_1f4
    add-int/lit8 v0, v0, 0x1

    .line 503
    goto/16 :goto_e

    .line 505
    :cond_1f8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 507
    const-string p2, "] should be String"

    .line 509
    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 512
    move-result-object p2

    .line 513
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 516
    throw p1

    .line 517
    :cond_204
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 519
    const/4 v1, 0x0

    .line 520
    invoke-direct {v0, p0, p1, p2, v1}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V

    .line 523
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 525
    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    .line 528
    move-result-object p2

    .line 529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    move-result-object p1

    .line 533
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 538
    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 541
    move-result-object p1

    .line 542
    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 544
    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 547
    move-result-object p2

    .line 548
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 551
    move-result p2

    .line 552
    add-int/lit8 p2, p2, -0x1

    .line 554
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    move-result-object p1

    .line 558
    check-cast p1, Ljava/util/ArrayList;

    .line 560
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    return-void

    .line 564
    :cond_233
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 566
    const-string p2, "Different number of objects inputted, "

    .line 568
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    move-result-object p2

    .line 572
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 574
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 577
    move-result-object v0

    .line 578
    array-length v0, v0

    .line 579
    const-string v1, " data expected"

    .line 581
    invoke-static {p2, v0, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 584
    move-result-object p2

    .line 585
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 588
    throw p1

    .line 589
    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_1bb  #00000001
        :pswitch_175  #00000002
        :pswitch_12e  #00000003
        :pswitch_e7  #00000004
        :pswitch_a0  #00000005
        :pswitch_8c  #00000006
        :pswitch_78  #00000007
        :pswitch_64  #00000008
        :pswitch_50  #00000009
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 4
    array-length v0, p1

    .line 5
    array-length v1, p2

    .line 6
    if-ne v0, v1, :cond_19

    .line 8
    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->newGroup()V

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_b
    array-length v1, p1

    .line 13
    if-ge v0, v1, :cond_18

    .line 15
    aget v1, p1, v0

    .line 17
    aget-object v2, p2, v0

    .line 19
    invoke-virtual {p0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_b

    .line 25
    :cond_18
    return-void

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string p2, "Different number between indexes and objects"

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .registers 15

    .line 1
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiuix/core/util/DirectIndexedFile$1;)V

    .line 8
    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 10
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_f
    array-length v1, p1

    .line 17
    if-ge v0, v1, :cond_13a

    .line 19
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 21
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 27
    invoke-direct {v3, p0, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;Lmiuix/core/util/DirectIndexedFile$1;)V

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    aget-object v1, p1, v0

    .line 35
    instance-of v3, v1, Ljava/lang/Byte;

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_3e

    .line 40
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 42
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 44
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 54
    aget-object v5, p1, v0

    .line 56
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 59
    :goto_3a
    move-object v6, v1

    .line 60
    move v7, v4

    .line 61
    goto/16 :goto_115

    .line 63
    :cond_3e
    instance-of v3, v1, Ljava/lang/Short;

    .line 65
    if-eqz v3, :cond_57

    .line 67
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 69
    const/4 v4, 0x2

    .line 70
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 72
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 82
    aget-object v5, p1, v0

    .line 84
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 87
    goto :goto_3a

    .line 88
    :cond_57
    instance-of v3, v1, Ljava/lang/Integer;

    .line 90
    if-eqz v3, :cond_70

    .line 92
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 94
    const/4 v4, 0x4

    .line 95
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 97
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 107
    aget-object v5, p1, v0

    .line 109
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 112
    goto :goto_3a

    .line 113
    :cond_70
    instance-of v3, v1, Ljava/lang/Long;

    .line 115
    if-eqz v3, :cond_8a

    .line 117
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 119
    const/16 v4, 0x8

    .line 121
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 123
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 133
    aget-object v5, p1, v0

    .line 135
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 138
    goto :goto_3a

    .line 139
    :cond_8a
    instance-of v3, v1, Ljava/lang/String;

    .line 141
    if-eqz v3, :cond_a5

    .line 143
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 145
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 147
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 157
    aget-object v5, p1, v0

    .line 159
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 162
    move-result-object v3

    .line 163
    aput-object v3, p1, v0

    .line 165
    goto :goto_3a

    .line 166
    :cond_a5
    instance-of v3, v1, [B

    .line 168
    if-eqz v3, :cond_c1

    .line 170
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 172
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 174
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 184
    aget-object v5, p1, v0

    .line 186
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 189
    move-result-object v3

    .line 190
    aput-object v3, p1, v0

    .line 192
    goto/16 :goto_3a

    .line 194
    :cond_c1
    instance-of v3, v1, [S

    .line 196
    if-eqz v3, :cond_dd

    .line 198
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 200
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 202
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 212
    aget-object v5, p1, v0

    .line 214
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 217
    move-result-object v3

    .line 218
    aput-object v3, p1, v0

    .line 220
    goto/16 :goto_3a

    .line 222
    :cond_dd
    instance-of v3, v1, [I

    .line 224
    if-eqz v3, :cond_f9

    .line 226
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 228
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 230
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 240
    aget-object v5, p1, v0

    .line 242
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 245
    move-result-object v3

    .line 246
    aput-object v3, p1, v0

    .line 248
    goto/16 :goto_3a

    .line 250
    :cond_f9
    instance-of v1, v1, [J

    .line 252
    if-eqz v1, :cond_12c

    .line 254
    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 256
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 258
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    .line 268
    aget-object v5, p1, v0

    .line 270
    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 273
    move-result-object v3

    .line 274
    aput-object v3, p1, v0

    .line 276
    goto/16 :goto_3a

    .line 278
    :goto_115
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 280
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 283
    move-result-object v1

    .line 284
    new-instance v3, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    .line 286
    const/4 v8, 0x0

    .line 287
    const/4 v9, 0x0

    .line 288
    const-wide/16 v10, 0x0

    .line 290
    const/4 v12, 0x0

    .line 291
    move-object v5, v3

    .line 292
    invoke-direct/range {v5 .. v12}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiuix/core/util/DirectIndexedFile$1;)V

    .line 295
    aput-object v3, v1, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 299
    goto/16 :goto_f

    .line 301
    :cond_12c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 303
    const-string v1, "Unsupported type of the ["

    .line 305
    const-string v2, "] argument"

    .line 307
    invoke-static {v1, v0, v2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 314
    throw p1

    .line 315
    :cond_13a
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 317
    new-instance v1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 319
    const/4 v3, -0x1

    .line 320
    invoke-direct {v1, p0, v3, p1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V

    .line 323
    invoke-static {v0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2602(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;Lmiuix/core/util/DirectIndexedFile$Builder$Item;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    .line 326
    return-void
.end method

.method public newGroup()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2a

    .line 13
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 15
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 21
    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_38

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    .line 45
    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_38
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->build()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    new-instance v1, Ljava/io/DataOutputStream;

    .line 7
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 9
    new-instance v3, Ljava/io/FileOutputStream;

    .line 11
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1c

    .line 20
    :try_start_13
    invoke-direct {p0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception v0

    .line 28
    goto :goto_20

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    move-object v4, v1

    .line 31
    move-object v1, v0

    .line 32
    move-object v0, v4

    .line 33
    :goto_20
    if-eqz v1, :cond_25

    .line 35
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 38
    :cond_25
    new-instance v1, Ljava/io/File;

    .line 40
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_46

    .line 49
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "Cannot delete file "

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_46
    throw v0
.end method
