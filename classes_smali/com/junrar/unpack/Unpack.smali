.class public final Lcom/junrar/unpack/Unpack;
.super Lcom/junrar/unpack/Unpack20;
.source "Unpack.java"


# static fields
.field private static final DBitLengthCounts:[I


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private lastFilter:I

.field private lowDistRepCount:I

.field private oldFilterLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ppm:Lcom/junrar/unpack/ppm/ModelPPM;

.field private ppmError:Z

.field private ppmEscChar:I

.field private prevLowDist:I

.field private prgStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/junrar/unpack/UnpackFilter;",
            ">;"
        }
    .end annotation
.end field

.field private rarVM:Lcom/junrar/unpack/vm/RarVM;

.field private tablesRead:Z

.field private unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

.field private unpOldTable:[B

.field private writtenFileSize:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x13

    .line 3
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_a

    .line 8
    sput-object v0, Lcom/junrar/unpack/Unpack;->DBitLengthCounts:[I

    .line 10
    return-void

    .line 11
    :array_a
    .array-data 4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0xe
        0x0
        0xc
    .end array-data
.end method

.method public constructor <init>(Lcom/junrar/unpack/ComprDataIO;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;-><init>()V

    .line 4
    new-instance v0, Lcom/junrar/unpack/ppm/ModelPPM;

    .line 6
    invoke-direct {v0}, Lcom/junrar/unpack/ppm/ModelPPM;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 11
    new-instance v0, Lcom/junrar/unpack/vm/RarVM;

    .line 13
    invoke-direct {v0}, Lcom/junrar/unpack/vm/RarVM;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 39
    const/16 v0, 0x194

    .line 41
    new-array v0, v0, [B

    .line 43
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    .line 45
    iput-object p1, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 50
    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 53
    iput-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->unpAllBuf:Z

    .line 55
    iput-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    .line 57
    return-void
.end method

.method private ExecuteCode(Lcom/junrar/unpack/vm/VMPreparedProgram;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_38

    .line 11
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    iget-wide v2, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 18
    long-to-int v2, v2

    .line 19
    aput v2, v0, v1

    .line 21
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 23
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 26
    move-result-object v1

    .line 27
    const/16 v2, 0x24

    .line 29
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 31
    long-to-int v3, v3

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 35
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 37
    invoke-virtual {p1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 40
    move-result-object v1

    .line 41
    const/16 v2, 0x28

    .line 43
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 45
    const/16 v5, 0x20

    .line 47
    ushr-long/2addr v3, v5

    .line 48
    long-to-int v3, v3

    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 52
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 54
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/vm/RarVM;->execute(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    .line 57
    :cond_38
    return-void
.end method

.method private UnpWriteArea(II)V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, p1, :cond_5

    .line 4
    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    .line 6
    :cond_5
    if-ge p2, p1, :cond_1a

    .line 8
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 10
    neg-int v2, p1

    .line 11
    const v3, 0x3fffff

    .line 14
    and-int/2addr v2, v3

    .line 15
    invoke-direct {p0, v1, p1, v2}, Lcom/junrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 18
    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v1, p2}, Lcom/junrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 24
    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->unpAllBuf:Z

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 29
    sub-int/2addr p2, p1

    .line 30
    invoke-direct {p0, v0, p1, p2}, Lcom/junrar/unpack/Unpack;->UnpWriteData([BII)V

    .line 33
    :goto_20
    return-void
.end method

.method private UnpWriteBuf()V
    .registers 16

    .line 1
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 5
    sub-int/2addr v1, v0

    .line 6
    const v2, 0x3fffff

    .line 9
    and-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_b
    iget-object v5, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 14
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 17
    move-result v5

    .line 18
    if-ge v4, v5, :cond_25c

    .line 20
    iget-object v5, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 22
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/junrar/unpack/UnpackFilter;

    .line 28
    const/4 v6, 0x1

    .line 29
    if-nez v5, :cond_20

    .line 31
    goto/16 :goto_259

    .line 33
    :cond_20
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->isNextWindow()Z

    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_2b

    .line 39
    invoke-virtual {v5, v3}, Lcom/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 42
    goto/16 :goto_259

    .line 44
    :cond_2b
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getBlockStart()I

    .line 47
    move-result v7

    .line 48
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    .line 51
    move-result v8

    .line 52
    sub-int v9, v7, v0

    .line 54
    and-int/2addr v9, v2

    .line 55
    if-ge v9, v1, :cond_259

    .line 57
    if-eq v0, v7, :cond_43

    .line 59
    invoke-direct {p0, v0, v7}, Lcom/junrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 62
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 64
    sub-int/2addr v0, v7

    .line 65
    and-int v1, v0, v2

    .line 67
    move v0, v7

    .line 68
    :cond_43
    if-gt v8, v1, :cond_238

    .line 70
    add-int v0, v7, v8

    .line 72
    and-int/2addr v0, v2

    .line 73
    if-lt v7, v0, :cond_5f

    .line 75
    if-nez v0, :cond_4d

    .line 77
    goto :goto_5f

    .line 78
    :cond_4d
    const/high16 v1, 0x400000

    .line 80
    sub-int/2addr v1, v7

    .line 81
    iget-object v8, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 83
    iget-object v9, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 85
    invoke-virtual {v8, v3, v9, v7, v1}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 88
    iget-object v8, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 90
    iget-object v9, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 92
    invoke-virtual {v8, v1, v9, v3, v0}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 95
    goto :goto_66

    .line 96
    :cond_5f
    :goto_5f
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 98
    iget-object v9, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 100
    invoke-virtual {v1, v3, v9, v7, v8}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 103
    :goto_66
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 105
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getParentFilter()I

    .line 108
    move-result v8

    .line 109
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/junrar/unpack/UnpackFilter;

    .line 115
    invoke-virtual {v1}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 130
    move-result v8

    .line 131
    const/16 v9, 0x40

    .line 133
    if-le v8, v9, :cond_b7

    .line 135
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    .line 146
    move-result v10

    .line 147
    invoke-virtual {v8, v10}, Ljava/util/Vector;->setSize(I)V

    .line 150
    move v8, v3

    .line 151
    :goto_96
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    .line 158
    move-result v10

    .line 159
    sub-int/2addr v10, v9

    .line 160
    if-ge v8, v10, :cond_b7

    .line 162
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 165
    move-result-object v10

    .line 166
    add-int/lit8 v11, v8, 0x40

    .line 168
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 171
    move-result-object v12

    .line 172
    invoke-virtual {v12, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v12

    .line 176
    check-cast v12, Ljava/lang/Byte;

    .line 178
    invoke-virtual {v10, v11, v12}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v8, v8, 0x1

    .line 183
    goto :goto_96

    .line 184
    :cond_b7
    invoke-direct {p0, v5}, Lcom/junrar/unpack/Unpack;->ExecuteCode(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    .line 187
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 194
    move-result v8

    .line 195
    if-le v8, v9, :cond_107

    .line 197
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 204
    move-result v8

    .line 205
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    .line 212
    move-result v10

    .line 213
    if-ge v8, v10, :cond_e5

    .line 215
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 222
    move-result-object v10

    .line 223
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    .line 226
    move-result v10

    .line 227
    invoke-virtual {v8, v10}, Ljava/util/Vector;->setSize(I)V

    .line 230
    :cond_e5
    move v8, v3

    .line 231
    :goto_e6
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 234
    move-result-object v10

    .line 235
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    .line 238
    move-result v10

    .line 239
    sub-int/2addr v10, v9

    .line 240
    if-ge v8, v10, :cond_10e

    .line 242
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 245
    move-result-object v10

    .line 246
    add-int/lit8 v11, v8, 0x40

    .line 248
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 251
    move-result-object v12

    .line 252
    invoke-virtual {v12, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Ljava/lang/Byte;

    .line 258
    invoke-virtual {v10, v11, v12}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v8, v8, 0x1

    .line 263
    goto :goto_e6

    .line 264
    :cond_107
    invoke-virtual {v1}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 271
    :cond_10e
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    .line 274
    move-result v1

    .line 275
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    .line 278
    move-result v5

    .line 279
    new-array v8, v5, [B

    .line 281
    iget-object v10, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 283
    invoke-virtual {v10}, Lcom/junrar/unpack/vm/RarVM;->getMem()[B

    .line 286
    move-result-object v10

    .line 287
    invoke-static {v10, v1, v8, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 292
    const/4 v10, 0x0

    .line 293
    invoke-interface {v1, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    :goto_127
    add-int/lit8 v1, v4, 0x1

    .line 298
    iget-object v11, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 300
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 303
    move-result v11

    .line 304
    if-ge v1, v11, :cond_226

    .line 306
    iget-object v11, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 308
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    move-result-object v11

    .line 312
    check-cast v11, Lcom/junrar/unpack/UnpackFilter;

    .line 314
    if-eqz v11, :cond_226

    .line 316
    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getBlockStart()I

    .line 319
    move-result v12

    .line 320
    if-ne v12, v7, :cond_226

    .line 322
    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    .line 325
    move-result v12

    .line 326
    if-ne v12, v5, :cond_226

    .line 328
    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->isNextWindow()Z

    .line 331
    move-result v12

    .line 332
    if-eqz v12, :cond_14f

    .line 334
    goto/16 :goto_226

    .line 336
    :cond_14f
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 338
    invoke-virtual {v4, v3, v8, v3, v5}, Lcom/junrar/unpack/vm/RarVM;->setMemory(I[BII)V

    .line 341
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 343
    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getParentFilter()I

    .line 346
    move-result v5

    .line 347
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 350
    move-result-object v4

    .line 351
    check-cast v4, Lcom/junrar/unpack/UnpackFilter;

    .line 353
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v11}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 364
    move-result-object v8

    .line 365
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 368
    move-result v8

    .line 369
    if-le v8, v9, :cond_1a3

    .line 371
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 374
    move-result-object v8

    .line 375
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 378
    move-result-object v11

    .line 379
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    .line 382
    move-result v11

    .line 383
    invoke-virtual {v8, v11}, Ljava/util/Vector;->setSize(I)V

    .line 386
    move v8, v3

    .line 387
    :goto_182
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 390
    move-result-object v11

    .line 391
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    .line 394
    move-result v11

    .line 395
    sub-int/2addr v11, v9

    .line 396
    if-ge v8, v11, :cond_1a3

    .line 398
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 401
    move-result-object v11

    .line 402
    add-int/lit8 v12, v8, 0x40

    .line 404
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 407
    move-result-object v13

    .line 408
    invoke-virtual {v13, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 411
    move-result-object v13

    .line 412
    check-cast v13, Ljava/lang/Byte;

    .line 414
    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    add-int/lit8 v8, v8, 0x1

    .line 419
    goto :goto_182

    .line 420
    :cond_1a3
    invoke-direct {p0, v5}, Lcom/junrar/unpack/Unpack;->ExecuteCode(Lcom/junrar/unpack/vm/VMPreparedProgram;)V

    .line 423
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 426
    move-result-object v8

    .line 427
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 430
    move-result v8

    .line 431
    if-le v8, v9, :cond_1f3

    .line 433
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 436
    move-result-object v8

    .line 437
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 440
    move-result v8

    .line 441
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 444
    move-result-object v11

    .line 445
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    .line 448
    move-result v11

    .line 449
    if-ge v8, v11, :cond_1d1

    .line 451
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 454
    move-result-object v8

    .line 455
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 458
    move-result-object v11

    .line 459
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    .line 462
    move-result v11

    .line 463
    invoke-virtual {v8, v11}, Ljava/util/Vector;->setSize(I)V

    .line 466
    :cond_1d1
    move v8, v3

    .line 467
    :goto_1d2
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 470
    move-result-object v11

    .line 471
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    .line 474
    move-result v11

    .line 475
    sub-int/2addr v11, v9

    .line 476
    if-ge v8, v11, :cond_1fa

    .line 478
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 481
    move-result-object v11

    .line 482
    add-int/lit8 v12, v8, 0x40

    .line 484
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 487
    move-result-object v13

    .line 488
    invoke-virtual {v13, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 491
    move-result-object v13

    .line 492
    check-cast v13, Ljava/lang/Byte;

    .line 494
    invoke-virtual {v11, v12, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 497
    add-int/lit8 v8, v8, 0x1

    .line 499
    goto :goto_1d2

    .line 500
    :cond_1f3
    invoke-virtual {v4}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 503
    move-result-object v4

    .line 504
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 507
    :cond_1fa
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataOffset()I

    .line 510
    move-result v4

    .line 511
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getFilteredDataSize()I

    .line 514
    move-result v8

    .line 515
    new-array v11, v8, [B

    .line 517
    move v12, v3

    .line 518
    :goto_205
    if-ge v12, v8, :cond_21c

    .line 520
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 523
    move-result-object v13

    .line 524
    add-int v14, v4, v12

    .line 526
    invoke-virtual {v13, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 529
    move-result-object v13

    .line 530
    check-cast v13, Ljava/lang/Byte;

    .line 532
    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    .line 535
    move-result v13

    .line 536
    aput-byte v13, v11, v12

    .line 538
    add-int/lit8 v12, v12, 0x1

    .line 540
    goto :goto_205

    .line 541
    :cond_21c
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 543
    invoke-interface {v4, v1, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 546
    move v4, v1

    .line 547
    move v5, v8

    .line 548
    move-object v8, v11

    .line 549
    goto/16 :goto_127

    .line 551
    :cond_226
    :goto_226
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 553
    invoke-virtual {v1, v8, v3, v5}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 556
    iput-boolean v6, p0, Lcom/junrar/unpack/Unpack15;->unpSomeRead:Z

    .line 558
    iget-wide v7, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 560
    int-to-long v9, v5

    .line 561
    add-long/2addr v7, v9

    .line 562
    iput-wide v7, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 564
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 566
    sub-int/2addr v1, v0

    .line 567
    and-int/2addr v1, v2

    .line 568
    goto :goto_259

    .line 569
    :cond_238
    :goto_238
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 571
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 574
    move-result v1

    .line 575
    if-ge v4, v1, :cond_256

    .line 577
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 579
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 582
    move-result-object v1

    .line 583
    check-cast v1, Lcom/junrar/unpack/UnpackFilter;

    .line 585
    if-eqz v1, :cond_253

    .line 587
    invoke-virtual {v1}, Lcom/junrar/unpack/UnpackFilter;->isNextWindow()Z

    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_253

    .line 593
    invoke-virtual {v1, v3}, Lcom/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 596
    :cond_253
    add-int/lit8 v4, v4, 0x1

    .line 598
    goto :goto_238

    .line 599
    :cond_256
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 601
    return-void

    .line 602
    :cond_259
    :goto_259
    add-int/2addr v4, v6

    .line 603
    goto/16 :goto_b

    .line 605
    :cond_25c
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 607
    invoke-direct {p0, v0, v1}, Lcom/junrar/unpack/Unpack;->UnpWriteArea(II)V

    .line 610
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 612
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 614
    return-void
.end method

.method private UnpWriteData([BII)V
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 3
    iget-wide v2, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-ltz v4, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    sub-long/2addr v2, v0

    .line 11
    int-to-long v0, p3

    .line 12
    cmp-long v4, v0, v2

    .line 14
    if-lez v4, :cond_10

    .line 16
    long-to-int p3, v2

    .line 17
    :cond_10
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 19
    invoke-virtual {v2, p1, p2, p3}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 22
    iget-wide p1, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 24
    add-long/2addr p1, v0

    .line 25
    iput-wide p1, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 27
    return-void
.end method

.method private addVMCode(ILjava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/junrar/unpack/vm/BitInput;

    .line 3
    invoke-direct {v0}, Lcom/junrar/unpack/vm/BitInput;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->InitBitInput()V

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    const v3, 0x8000

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    move-result v4

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_2a

    .line 24
    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->getInBuf()[B

    .line 27
    move-result-object v3

    .line 28
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Byte;

    .line 34
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    .line 37
    move-result v4

    .line 38
    aput-byte v4, v3, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_a

    .line 43
    :cond_2a
    iget-object p2, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 45
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/RarVM;->init()V

    .line 48
    and-int/lit16 p2, p1, 0x80

    .line 50
    if-eqz p2, :cond_40

    .line 52
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_3d

    .line 58
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->initFilters()V

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    add-int/lit8 p2, p2, -0x1

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    iget p2, p0, Lcom/junrar/unpack/Unpack;->lastFilter:I

    .line 67
    :goto_42
    iget-object v2, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 72
    move-result v2

    .line 73
    if-gt p2, v2, :cond_2ad

    .line 75
    iget-object v2, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 80
    move-result v2

    .line 81
    if-le p2, v2, :cond_54

    .line 83
    goto/16 :goto_2ad

    .line 85
    :cond_54
    iput p2, p0, Lcom/junrar/unpack/Unpack;->lastFilter:I

    .line 87
    iget-object v2, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 92
    move-result v2

    .line 93
    const/4 v3, 0x1

    .line 94
    if-ne p2, v2, :cond_61

    .line 96
    move v2, v3

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v2, v1

    .line 99
    :goto_62
    new-instance v4, Lcom/junrar/unpack/UnpackFilter;

    .line 101
    invoke-direct {v4}, Lcom/junrar/unpack/UnpackFilter;-><init>()V

    .line 104
    if-eqz v2, :cond_8f

    .line 106
    const/16 v5, 0x400

    .line 108
    if-le p2, v5, :cond_6e

    .line 110
    return v1

    .line 111
    :cond_6e
    new-instance v5, Lcom/junrar/unpack/UnpackFilter;

    .line 113
    invoke-direct {v5}, Lcom/junrar/unpack/UnpackFilter;-><init>()V

    .line 116
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 118
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 123
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 126
    move-result v6

    .line 127
    sub-int/2addr v6, v3

    .line 128
    invoke-virtual {v4, v6}, Lcom/junrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 131
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v7

    .line 137
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v5, v1}, Lcom/junrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 143
    goto :goto_a2

    .line 144
    :cond_8f
    iget-object v5, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 146
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Lcom/junrar/unpack/UnpackFilter;

    .line 152
    invoke-virtual {v4, p2}, Lcom/junrar/unpack/UnpackFilter;->setParentFilter(I)V

    .line 155
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    .line 158
    move-result v6

    .line 159
    add-int/2addr v6, v3

    .line 160
    invoke-virtual {v5, v6}, Lcom/junrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 163
    :goto_a2
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 165
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    .line 171
    move-result v6

    .line 172
    invoke-virtual {v4, v6}, Lcom/junrar/unpack/UnpackFilter;->setExecCount(I)V

    .line 175
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 178
    move-result v6

    .line 179
    and-int/lit8 v7, p1, 0x40

    .line 181
    if-eqz v7, :cond_b8

    .line 183
    add-int/lit16 v6, v6, 0x102

    .line 185
    :cond_b8
    iget v7, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 187
    add-int/2addr v7, v6

    .line 188
    const v8, 0x3fffff

    .line 191
    and-int/2addr v7, v8

    .line 192
    invoke-virtual {v4, v7}, Lcom/junrar/unpack/UnpackFilter;->setBlockStart(I)V

    .line 195
    and-int/lit8 v7, p1, 0x20

    .line 197
    if-eqz v7, :cond_ce

    .line 199
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 202
    move-result v7

    .line 203
    invoke-virtual {v4, v7}, Lcom/junrar/unpack/UnpackFilter;->setBlockLength(I)V

    .line 206
    goto :goto_e7

    .line 207
    :cond_ce
    iget-object v7, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 209
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 212
    move-result v7

    .line 213
    if-ge p2, v7, :cond_e3

    .line 215
    iget-object v7, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 217
    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Ljava/lang/Integer;

    .line 223
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 226
    move-result v7

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    move v7, v1

    .line 229
    :goto_e4
    invoke-virtual {v4, v7}, Lcom/junrar/unpack/UnpackFilter;->setBlockLength(I)V

    .line 232
    :goto_e7
    iget v7, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 234
    iget v9, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 236
    if-eq v7, v9, :cond_f3

    .line 238
    sub-int/2addr v7, v9

    .line 239
    and-int/2addr v7, v8

    .line 240
    if-gt v7, v6, :cond_f3

    .line 242
    move v6, v3

    .line 243
    goto :goto_f4

    .line 244
    :cond_f3
    move v6, v1

    .line 245
    :goto_f4
    invoke-virtual {v4, v6}, Lcom/junrar/unpack/UnpackFilter;->setNextWindow(Z)V

    .line 248
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 250
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    .line 253
    move-result v7

    .line 254
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v7

    .line 258
    invoke-interface {v6, p2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 268
    move-result-object p2

    .line 269
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 272
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 275
    move-result-object p2

    .line 276
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 279
    move-result-object p2

    .line 280
    const v6, 0x3c000

    .line 283
    const/4 v7, 0x3

    .line 284
    aput v6, p2, v7

    .line 286
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    .line 297
    move-result v6

    .line 298
    const/4 v8, 0x4

    .line 299
    aput v6, p2, v8

    .line 301
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 304
    move-result-object p2

    .line 305
    invoke-virtual {p2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 308
    move-result-object p2

    .line 309
    const/4 v6, 0x5

    .line 310
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    .line 313
    move-result v8

    .line 314
    aput v8, p2, v6

    .line 316
    and-int/lit8 p2, p1, 0x10

    .line 318
    const/4 v6, 0x7

    .line 319
    if-eqz p2, :cond_162

    .line 321
    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 324
    move-result p2

    .line 325
    ushr-int/lit8 p2, p2, 0x9

    .line 327
    invoke-virtual {v0, v6}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 330
    move v8, v1

    .line 331
    :goto_14a
    if-ge v8, v6, :cond_162

    .line 333
    shl-int v9, v3, v8

    .line 335
    and-int/2addr v9, p2

    .line 336
    if-eqz v9, :cond_15f

    .line 338
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 341
    move-result-object v9

    .line 342
    invoke-virtual {v9}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 345
    move-result-object v9

    .line 346
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 349
    move-result v10

    .line 350
    aput v10, v9, v8

    .line 352
    :cond_15f
    add-int/lit8 v8, v8, 0x1

    .line 354
    goto :goto_14a

    .line 355
    :cond_162
    const/16 p2, 0x8

    .line 357
    if-eqz v2, :cond_196

    .line 359
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 362
    move-result v2

    .line 363
    const/high16 v8, 0x10000

    .line 365
    if-ge v2, v8, :cond_195

    .line 367
    if-nez v2, :cond_171

    .line 369
    goto :goto_195

    .line 370
    :cond_171
    new-array v8, v2, [B

    .line 372
    move v9, v1

    .line 373
    :goto_174
    if-ge v9, v2, :cond_18b

    .line 375
    invoke-virtual {v0, v7}, Lcom/junrar/unpack/vm/BitInput;->Overflow(I)Z

    .line 378
    move-result v10

    .line 379
    if-eqz v10, :cond_17d

    .line 381
    return v1

    .line 382
    :cond_17d
    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 385
    move-result v10

    .line 386
    shr-int/2addr v10, p2

    .line 387
    int-to-byte v10, v10

    .line 388
    aput-byte v10, v8, v9

    .line 390
    invoke-virtual {v0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 393
    add-int/lit8 v9, v9, 0x1

    .line 395
    goto :goto_174

    .line 396
    :cond_18b
    iget-object v9, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 398
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 401
    move-result-object v10

    .line 402
    invoke-virtual {v9, v8, v2, v10}, Lcom/junrar/unpack/vm/RarVM;->prepare([BILcom/junrar/unpack/vm/VMPreparedProgram;)V

    .line 405
    goto :goto_196

    .line 406
    :cond_195
    :goto_195
    return v1

    .line 407
    :cond_196
    :goto_196
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 414
    move-result-object v8

    .line 415
    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmd()Ljava/util/List;

    .line 418
    move-result-object v8

    .line 419
    invoke-virtual {v2, v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setAltCmd(Ljava/util/List;)V

    .line 422
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 429
    move-result-object v8

    .line 430
    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getCmdCount()I

    .line 433
    move-result v8

    .line 434
    invoke-virtual {v2, v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setCmdCount(I)V

    .line 437
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 448
    move-result v2

    .line 449
    if-lez v2, :cond_1d5

    .line 451
    const/16 v8, 0x2000

    .line 453
    if-ge v2, v8, :cond_1d5

    .line 455
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v5}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getStaticData()Ljava/util/Vector;

    .line 466
    move-result-object v5

    .line 467
    invoke-virtual {v2, v5}, Lcom/junrar/unpack/vm/VMPreparedProgram;->setStaticData(Ljava/util/Vector;)V

    .line 470
    :cond_1d5
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 481
    move-result v2

    .line 482
    const/16 v5, 0x40

    .line 484
    if-ge v2, v5, :cond_1fb

    .line 486
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 489
    move-result-object v2

    .line 490
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 497
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v2, v5}, Ljava/util/Vector;->setSize(I)V

    .line 508
    :cond_1fb
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 515
    move-result-object v2

    .line 516
    move v8, v1

    .line 517
    :goto_204
    if-ge v8, v6, :cond_21a

    .line 519
    iget-object v9, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 521
    mul-int/lit8 v10, v8, 0x4

    .line 523
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 526
    move-result-object v11

    .line 527
    invoke-virtual {v11}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getInitR()[I

    .line 530
    move-result-object v11

    .line 531
    aget v11, v11, v8

    .line 533
    invoke-virtual {v9, v2, v10, v11}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 536
    add-int/lit8 v8, v8, 0x1

    .line 538
    goto :goto_204

    .line 539
    :cond_21a
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 541
    const/16 v8, 0x1c

    .line 543
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getBlockLength()I

    .line 546
    move-result v9

    .line 547
    invoke-virtual {v6, v2, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 550
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 552
    const/16 v8, 0x20

    .line 554
    invoke-virtual {v6, v2, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 557
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 559
    const/16 v8, 0x24

    .line 561
    invoke-virtual {v6, v2, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 564
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 566
    const/16 v8, 0x28

    .line 568
    invoke-virtual {v6, v2, v8, v1}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 571
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->rarVM:Lcom/junrar/unpack/vm/RarVM;

    .line 573
    const/16 v8, 0x2c

    .line 575
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getExecCount()I

    .line 578
    move-result v9

    .line 579
    invoke-virtual {v6, v2, v8, v9}, Lcom/junrar/unpack/vm/RarVM;->setLowEndianValue(Ljava/util/Vector;II)V

    .line 582
    move v6, v1

    .line 583
    :goto_246
    const/16 v8, 0x10

    .line 585
    if-ge v6, v8, :cond_256

    .line 587
    add-int/lit8 v8, v6, 0x30

    .line 589
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 592
    move-result-object v9

    .line 593
    invoke-virtual {v2, v8, v9}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 596
    add-int/lit8 v6, v6, 0x1

    .line 598
    goto :goto_246

    .line 599
    :cond_256
    and-int/2addr p1, p2

    .line 600
    if-eqz p1, :cond_2ac

    .line 602
    invoke-virtual {v0, v7}, Lcom/junrar/unpack/vm/BitInput;->Overflow(I)Z

    .line 605
    move-result p1

    .line 606
    if-eqz p1, :cond_260

    .line 608
    return v1

    .line 609
    :cond_260
    invoke-static {v0}, Lcom/junrar/unpack/vm/RarVM;->ReadData(Lcom/junrar/unpack/vm/BitInput;)I

    .line 612
    move-result p1

    .line 613
    const/16 v2, 0x1fc0

    .line 615
    if-le p1, v2, :cond_269

    .line 617
    return v1

    .line 618
    :cond_269
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 625
    move-result-object v2

    .line 626
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 629
    move-result v2

    .line 630
    add-int/lit8 v6, p1, 0x40

    .line 632
    if-ge v2, v6, :cond_285

    .line 634
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 637
    move-result-object v8

    .line 638
    invoke-virtual {v8}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 641
    move-result-object v8

    .line 642
    sub-int/2addr v6, v2

    .line 643
    invoke-virtual {v8, v6}, Ljava/util/Vector;->setSize(I)V

    .line 646
    :cond_285
    invoke-virtual {v4}, Lcom/junrar/unpack/UnpackFilter;->getPrg()Lcom/junrar/unpack/vm/VMPreparedProgram;

    .line 649
    move-result-object v2

    .line 650
    invoke-virtual {v2}, Lcom/junrar/unpack/vm/VMPreparedProgram;->getGlobalData()Ljava/util/Vector;

    .line 653
    move-result-object v2

    .line 654
    move v4, v1

    .line 655
    :goto_28e
    if-ge v4, p1, :cond_2ac

    .line 657
    invoke-virtual {v0, v7}, Lcom/junrar/unpack/vm/BitInput;->Overflow(I)Z

    .line 660
    move-result v6

    .line 661
    if-eqz v6, :cond_297

    .line 663
    return v1

    .line 664
    :cond_297
    add-int v6, v5, v4

    .line 666
    invoke-virtual {v0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 669
    move-result v8

    .line 670
    ushr-int/2addr v8, p2

    .line 671
    int-to-byte v8, v8

    .line 672
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 675
    move-result-object v8

    .line 676
    invoke-virtual {v2, v6, v8}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {v0, p2}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 682
    add-int/lit8 v4, v4, 0x1

    .line 684
    goto :goto_28e

    .line 685
    :cond_2ac
    return v3

    .line 686
    :cond_2ad
    :goto_2ad
    return v1
.end method

.method private copyString(II)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 3
    sub-int p2, v0, p2

    .line 5
    if-ltz p2, :cond_2d

    .line 7
    const v1, 0x3ffefc

    .line 10
    if-ge p2, v1, :cond_2d

    .line 12
    if-ge v0, v1, :cond_2d

    .line 14
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 18
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 20
    add-int/lit8 v2, p2, 0x1

    .line 22
    aget-byte p2, v1, p2

    .line 24
    aput-byte p2, v1, v0

    .line 26
    :goto_19
    add-int/lit8 p1, p1, -0x1

    .line 28
    if-lez p1, :cond_48

    .line 30
    iget-object p2, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 32
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 36
    iput v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 38
    add-int/lit8 v1, v2, 0x1

    .line 40
    aget-byte v2, p2, v2

    .line 42
    aput-byte v2, p2, v0

    .line 44
    move v2, v1

    .line 45
    goto :goto_19

    .line 46
    :cond_2d
    :goto_2d
    add-int/lit8 v0, p1, -0x1

    .line 48
    if-eqz p1, :cond_48

    .line 50
    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 52
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 54
    add-int/lit8 v2, p2, 0x1

    .line 56
    const v3, 0x3fffff

    .line 59
    and-int/2addr p2, v3

    .line 60
    aget-byte p2, p1, p2

    .line 62
    aput-byte p2, p1, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    and-int p1, v1, v3

    .line 68
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 70
    move p1, v0

    .line 71
    move p2, v2

    .line 72
    goto :goto_2d

    .line 73
    :cond_48
    return-void
.end method

.method private initFilters()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->oldFilterLengths:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/junrar/unpack/Unpack;->lastFilter:I

    .line 9
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->filters:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->prgStack:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    return-void
.end method

.method private insertLastMatch(II)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 3
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 5
    return-void
.end method

.method private insertOldDist(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 3
    const/4 v1, 0x2

    .line 4
    aget v2, v0, v1

    .line 6
    const/4 v3, 0x3

    .line 7
    aput v2, v0, v3

    .line 9
    const/4 v2, 0x1

    .line 10
    aget v3, v0, v2

    .line 12
    aput v3, v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    aget v3, v0, v1

    .line 17
    aput v3, v0, v2

    .line 19
    aput p1, v0, v1

    .line 21
    return-void
.end method

.method private readEndOfBlock()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x8000

    .line 8
    and-int/2addr v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_12

    .line 13
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 16
    move v1, v2

    .line 17
    move v0, v3

    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    and-int/lit16 v0, v0, 0x4000

    .line 21
    if-eqz v0, :cond_18

    .line 23
    move v0, v3

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v2

    .line 26
    :goto_19
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 30
    move v1, v3

    .line 31
    :goto_1e
    xor-int/2addr v0, v3

    .line 32
    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    .line 34
    if-nez v1, :cond_2a

    .line 36
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readTables()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 42
    move v2, v3

    .line 43
    :cond_2a
    return v2
.end method

.method private readTables()Z
    .registers 14

    .line 1
    const/16 v0, 0x14

    .line 3
    new-array v1, v0, [B

    .line 5
    const/16 v2, 0x194

    .line 7
    new-array v3, v2, [B

    .line 9
    iget v4, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 11
    iget v5, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 13
    add-int/lit8 v5, v5, -0x19

    .line 15
    const/4 v6, 0x0

    .line 16
    if-le v4, v5, :cond_18

    .line 18
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_18

    .line 24
    return v6

    .line 25
    :cond_18
    iget v4, p0, Lcom/junrar/unpack/vm/BitInput;->inBit:I

    .line 27
    rsub-int/lit8 v4, v4, 0x8

    .line 29
    const/4 v5, 0x7

    .line 30
    and-int/2addr v4, v5

    .line 31
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 34
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 37
    move-result v4

    .line 38
    int-to-long v7, v4

    .line 39
    const-wide/32 v9, 0x8000

    .line 42
    and-long/2addr v9, v7

    .line 43
    const-wide/16 v11, 0x0

    .line 45
    cmp-long v4, v9, v11

    .line 47
    if-eqz v4, :cond_3b

    .line 49
    sget-object v0, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/junrar/unpack/ppm/BlockTypes;

    .line 51
    iput-object v0, p0, Lcom/junrar/unpack/Unpack;->unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

    .line 53
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 55
    invoke-virtual {v0, p0}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeInit(Lcom/junrar/unpack/Unpack;)Z

    .line 58
    move-result v0

    .line 59
    return v0

    .line 60
    :cond_3b
    sget-object v4, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/junrar/unpack/ppm/BlockTypes;

    .line 62
    iput-object v4, p0, Lcom/junrar/unpack/Unpack;->unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

    .line 64
    iput v6, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    .line 66
    iput v6, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 68
    const-wide/16 v9, 0x4000

    .line 70
    and-long/2addr v7, v9

    .line 71
    cmp-long v4, v7, v11

    .line 73
    if-nez v4, :cond_4f

    .line 75
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    .line 77
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 80
    :cond_4f
    const/4 v4, 0x2

    .line 81
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 84
    move v4, v6

    .line 85
    :goto_54
    const/16 v7, 0xf

    .line 87
    const/4 v8, 0x1

    .line 88
    if-ge v4, v0, :cond_8e

    .line 90
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 93
    move-result v9

    .line 94
    ushr-int/lit8 v9, v9, 0xc

    .line 96
    and-int/lit16 v9, v9, 0xff

    .line 98
    const/4 v10, 0x4

    .line 99
    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 102
    if-ne v9, v7, :cond_89

    .line 104
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 107
    move-result v9

    .line 108
    ushr-int/lit8 v9, v9, 0xc

    .line 110
    and-int/lit16 v9, v9, 0xff

    .line 112
    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 115
    if-nez v9, :cond_77

    .line 117
    aput-byte v7, v1, v4

    .line 119
    goto :goto_8c

    .line 120
    :cond_77
    add-int/lit8 v9, v9, 0x2

    .line 122
    :goto_79
    add-int/lit8 v7, v9, -0x1

    .line 124
    if-lez v9, :cond_86

    .line 126
    if-ge v4, v0, :cond_86

    .line 128
    add-int/lit8 v9, v4, 0x1

    .line 130
    aput-byte v6, v1, v4

    .line 132
    move v4, v9

    .line 133
    move v9, v7

    .line 134
    goto :goto_79

    .line 135
    :cond_86
    add-int/lit8 v4, v4, -0x1

    .line 137
    goto :goto_8c

    .line 138
    :cond_89
    int-to-byte v7, v9

    .line 139
    aput-byte v7, v1, v4

    .line 141
    :goto_8c
    add-int/2addr v4, v8

    .line 142
    goto :goto_54

    .line 143
    :cond_8e
    iget-object v4, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    .line 145
    invoke-virtual {p0, v1, v6, v4, v0}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 148
    move v0, v6

    .line 149
    :cond_94
    :goto_94
    if-ge v0, v2, :cond_10d

    .line 151
    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 153
    iget v4, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 155
    add-int/lit8 v4, v4, -0x5

    .line 157
    if-le v1, v4, :cond_a5

    .line 159
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_a5

    .line 165
    return v6

    .line 166
    :cond_a5
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    .line 168
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 171
    move-result v1

    .line 172
    const/16 v4, 0x10

    .line 174
    if-ge v1, v4, :cond_bb

    .line 176
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    .line 178
    aget-byte v4, v4, v0

    .line 180
    add-int/2addr v1, v4

    .line 181
    and-int/2addr v1, v7

    .line 182
    int-to-byte v1, v1

    .line 183
    aput-byte v1, v3, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 187
    goto :goto_94

    .line 188
    :cond_bb
    const/16 v9, 0x12

    .line 190
    const/4 v10, 0x3

    .line 191
    if-ge v1, v9, :cond_e8

    .line 193
    if-ne v1, v4, :cond_cd

    .line 195
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 198
    move-result v1

    .line 199
    ushr-int/lit8 v1, v1, 0xd

    .line 201
    add-int/2addr v1, v10

    .line 202
    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 205
    goto :goto_d8

    .line 206
    :cond_cd
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 209
    move-result v1

    .line 210
    ushr-int/lit8 v1, v1, 0x9

    .line 212
    add-int/lit8 v1, v1, 0xb

    .line 214
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 217
    :goto_d8
    add-int/lit8 v4, v1, -0x1

    .line 219
    if-lez v1, :cond_94

    .line 221
    if-ge v0, v2, :cond_94

    .line 223
    add-int/lit8 v1, v0, -0x1

    .line 225
    aget-byte v1, v3, v1

    .line 227
    aput-byte v1, v3, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 231
    move v1, v4

    .line 232
    goto :goto_d8

    .line 233
    :cond_e8
    if-ne v1, v9, :cond_f5

    .line 235
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 238
    move-result v1

    .line 239
    ushr-int/lit8 v1, v1, 0xd

    .line 241
    add-int/2addr v1, v10

    .line 242
    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 245
    goto :goto_100

    .line 246
    :cond_f5
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->fgetbits()I

    .line 249
    move-result v1

    .line 250
    ushr-int/lit8 v1, v1, 0x9

    .line 252
    add-int/lit8 v1, v1, 0xb

    .line 254
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->faddbits(I)V

    .line 257
    :goto_100
    add-int/lit8 v4, v1, -0x1

    .line 259
    if-lez v1, :cond_94

    .line 261
    if-ge v0, v2, :cond_94

    .line 263
    add-int/lit8 v1, v0, 0x1

    .line 265
    aput-byte v6, v3, v0

    .line 267
    move v0, v1

    .line 268
    move v1, v4

    .line 269
    goto :goto_100

    .line 270
    :cond_10d
    iput-boolean v8, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    .line 272
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 274
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 276
    if-le v0, v1, :cond_116

    .line 278
    return v6

    .line 279
    :cond_116
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    .line 281
    const/16 v1, 0x12b

    .line 283
    invoke-virtual {p0, v3, v6, v0, v1}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 286
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    .line 288
    const/16 v2, 0x3c

    .line 290
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 293
    const/16 v0, 0x167

    .line 295
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->LDD:Lcom/junrar/unpack/decode/LowDistDecode;

    .line 297
    const/16 v2, 0x11

    .line 299
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 302
    const/16 v0, 0x178

    .line 304
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    .line 306
    const/16 v2, 0x1c

    .line 308
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 311
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    .line 313
    array-length v1, v0

    .line 314
    invoke-static {v3, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    return v8
.end method

.method private readVMCode()Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    shr-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 11
    and-int/lit8 v2, v0, 0x7

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 15
    const/4 v3, 0x7

    .line 16
    if-ne v2, v3, :cond_1b

    .line 18
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 21
    move-result v2

    .line 22
    shr-int/2addr v2, v1

    .line 23
    add-int/2addr v2, v3

    .line 24
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 27
    goto :goto_26

    .line 28
    :cond_1b
    if-ne v2, v1, :cond_26

    .line 30
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 33
    move-result v2

    .line 34
    const/16 v3, 0x10

    .line 36
    invoke-virtual {p0, v3}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 39
    :cond_26
    :goto_26
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    :goto_2d
    if-ge v5, v2, :cond_55

    .line 48
    iget v6, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 50
    iget v7, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 52
    add-int/lit8 v7, v7, -0x1

    .line 54
    if-lt v6, v7, :cond_42

    .line 56
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_42

    .line 62
    add-int/lit8 v6, v2, -0x1

    .line 64
    if-ge v5, v6, :cond_42

    .line 66
    return v4

    .line 67
    :cond_42
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 70
    move-result v6

    .line 71
    shr-int/2addr v6, v1

    .line 72
    int-to-byte v6, v6

    .line 73
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 85
    goto :goto_2d

    .line 86
    :cond_55
    invoke-direct {p0, v0, v3}, Lcom/junrar/unpack/Unpack;->addVMCode(ILjava/util/List;)Z

    .line 89
    move-result v0

    .line 90
    return v0
.end method

.method private readVMCodePPM()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    return v2

    .line 12
    :cond_b
    and-int/lit8 v3, v0, 0x7

    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 16
    const/4 v4, 0x7

    .line 17
    if-ne v3, v4, :cond_1d

    .line 19
    iget-object v3, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 21
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 24
    move-result v3

    .line 25
    if-ne v3, v1, :cond_1b

    .line 27
    return v2

    .line 28
    :cond_1b
    add-int/2addr v3, v4

    .line 29
    goto :goto_36

    .line 30
    :cond_1d
    const/16 v4, 0x8

    .line 32
    if-ne v3, v4, :cond_36

    .line 34
    iget-object v3, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 36
    invoke-virtual {v3}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 39
    move-result v3

    .line 40
    if-ne v3, v1, :cond_2a

    .line 42
    return v2

    .line 43
    :cond_2a
    iget-object v4, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 45
    invoke-virtual {v4}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 48
    move-result v4

    .line 49
    if-ne v4, v1, :cond_33

    .line 51
    return v2

    .line 52
    :cond_33
    mul-int/lit16 v3, v3, 0x100

    .line 54
    add-int/2addr v3, v4

    .line 55
    :cond_36
    :goto_36
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    move v5, v2

    .line 61
    :goto_3c
    if-ge v5, v3, :cond_52

    .line 63
    iget-object v6, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 65
    invoke-virtual {v6}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 68
    move-result v6

    .line 69
    if-ne v6, v1, :cond_47

    .line 71
    return v2

    .line 72
    :cond_47
    int-to-byte v6, v6

    .line 73
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 82
    goto :goto_3c

    .line 83
    :cond_52
    invoke-direct {p0, v0, v4}, Lcom/junrar/unpack/Unpack;->addVMCode(ILjava/util/List;)Z

    .line 86
    move-result v0

    .line 87
    return v0
.end method

.method private unpack29(Z)V
    .registers 13

    .line 1
    const/16 v0, 0x3c

    .line 3
    new-array v1, v0, [I

    .line 5
    new-array v0, v0, [B

    .line 7
    const/4 v2, 0x1

    .line 8
    aget v3, v1, v2

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v3, :cond_2c

    .line 13
    move v3, v4

    .line 14
    move v5, v3

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    :goto_10
    sget-object v8, Lcom/junrar/unpack/Unpack;->DBitLengthCounts:[I

    .line 19
    array-length v9, v8

    .line 20
    if-ge v3, v9, :cond_2c

    .line 22
    aget v8, v8, v3

    .line 24
    move v9, v4

    .line 25
    :goto_18
    if-ge v9, v8, :cond_27

    .line 27
    aput v5, v1, v7

    .line 29
    int-to-byte v10, v6

    .line 30
    aput-byte v10, v0, v7

    .line 32
    add-int/lit8 v9, v9, 0x1

    .line 34
    add-int/lit8 v7, v7, 0x1

    .line 36
    shl-int v10, v2, v6

    .line 38
    add-int/2addr v5, v10

    .line 39
    goto :goto_18

    .line 40
    :cond_27
    add-int/lit8 v3, v3, 0x1

    .line 42
    add-int/lit8 v6, v6, 0x1

    .line 44
    goto :goto_10

    .line 45
    :cond_2c
    iget-boolean v3, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 47
    if-nez v3, :cond_47

    .line 49
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack;->unpInitData(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3a

    .line 58
    return-void

    .line 59
    :cond_3a
    if-eqz p1, :cond_40

    .line 61
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    .line 63
    if-nez p1, :cond_47

    .line 65
    :cond_40
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readTables()Z

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_47

    .line 71
    return-void

    .line 72
    :cond_47
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack;->ppmError:Z

    .line 74
    if-eqz p1, :cond_4c

    .line 76
    return-void

    .line 77
    :cond_4c
    :goto_4c
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 79
    const v3, 0x3fffff

    .line 82
    and-int/2addr p1, v3

    .line 83
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 85
    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 87
    iget v5, p0, Lcom/junrar/unpack/Unpack15;->readBorder:I

    .line 89
    if-le p1, v5, :cond_62

    .line 91
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_62

    .line 97
    goto/16 :goto_1b7

    .line 99
    :cond_62
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 101
    iget v5, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 103
    sub-int v6, p1, v5

    .line 105
    and-int/2addr v3, v6

    .line 106
    const/16 v6, 0x104

    .line 108
    if-ge v3, v6, :cond_80

    .line 110
    if-eq p1, v5, :cond_80

    .line 112
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->UnpWriteBuf()V

    .line 115
    iget-wide v5, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 117
    iget-wide v7, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 119
    cmp-long p1, v5, v7

    .line 121
    if-lez p1, :cond_7b

    .line 123
    return-void

    .line 124
    :cond_7b
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 126
    if-eqz p1, :cond_80

    .line 128
    return-void

    .line 129
    :cond_80
    iget-object p1, p0, Lcom/junrar/unpack/Unpack;->unpBlockType:Lcom/junrar/unpack/ppm/BlockTypes;

    .line 131
    sget-object v3, Lcom/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/junrar/unpack/ppm/BlockTypes;

    .line 133
    const/4 v5, 0x3

    .line 134
    const/4 v6, 0x2

    .line 135
    const/4 v7, 0x4

    .line 136
    if-ne p1, v3, :cond_109

    .line 138
    iget-object p1, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 140
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 143
    move-result p1

    .line 144
    const/4 v3, -0x1

    .line 145
    if-ne p1, v3, :cond_96

    .line 147
    iput-boolean v2, p0, Lcom/junrar/unpack/Unpack;->ppmError:Z

    .line 149
    goto/16 :goto_1b7

    .line 151
    :cond_96
    iget v8, p0, Lcom/junrar/unpack/Unpack;->ppmEscChar:I

    .line 153
    if-ne p1, v8, :cond_fc

    .line 155
    iget-object v8, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 157
    invoke-virtual {v8}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_aa

    .line 163
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readTables()Z

    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_4c

    .line 169
    goto/16 :goto_1b7

    .line 171
    :cond_aa
    if-eq v8, v6, :cond_1b7

    .line 173
    if-ne v8, v3, :cond_b0

    .line 175
    goto/16 :goto_1b7

    .line 177
    :cond_b0
    if-ne v8, v5, :cond_ba

    .line 179
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readVMCodePPM()Z

    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_4c

    .line 185
    goto/16 :goto_1b7

    .line 187
    :cond_ba
    if-ne v8, v7, :cond_e8

    .line 189
    move p1, v4

    .line 190
    move v6, p1

    .line 191
    move v8, v6

    .line 192
    move v9, v8

    .line 193
    :goto_c0
    if-ge p1, v7, :cond_db

    .line 195
    if-nez v6, :cond_db

    .line 197
    iget-object v10, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 199
    invoke-virtual {v10}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 202
    move-result v10

    .line 203
    if-ne v10, v3, :cond_ce

    .line 205
    move v6, v2

    .line 206
    goto :goto_d8

    .line 207
    :cond_ce
    if-ne p1, v5, :cond_d3

    .line 209
    and-int/lit16 v9, v10, 0xff

    .line 211
    goto :goto_d8

    .line 212
    :cond_d3
    shl-int/lit8 v8, v8, 0x8

    .line 214
    and-int/lit16 v10, v10, 0xff

    .line 216
    add-int/2addr v8, v10

    .line 217
    :goto_d8
    add-int/lit8 p1, p1, 0x1

    .line 219
    goto :goto_c0

    .line 220
    :cond_db
    if-eqz v6, :cond_df

    .line 222
    goto/16 :goto_1b7

    .line 224
    :cond_df
    add-int/lit8 v9, v9, 0x20

    .line 226
    add-int/lit8 v8, v8, 0x2

    .line 228
    invoke-direct {p0, v9, v8}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    .line 231
    goto/16 :goto_4c

    .line 233
    :cond_e8
    const/4 v5, 0x5

    .line 234
    if-ne v8, v5, :cond_fc

    .line 236
    iget-object p1, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 238
    invoke-virtual {p1}, Lcom/junrar/unpack/ppm/ModelPPM;->decodeChar()I

    .line 241
    move-result p1

    .line 242
    if-ne p1, v3, :cond_f5

    .line 244
    goto/16 :goto_1b7

    .line 246
    :cond_f5
    add-int/lit8 p1, p1, 0x4

    .line 248
    invoke-direct {p0, p1, v2}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    .line 251
    goto/16 :goto_4c

    .line 253
    :cond_fc
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 255
    iget v5, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 257
    add-int/lit8 v6, v5, 0x1

    .line 259
    iput v6, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 261
    int-to-byte p1, p1

    .line 262
    aput-byte p1, v3, v5

    .line 264
    goto/16 :goto_4c

    .line 266
    :cond_109
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    .line 268
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 271
    move-result p1

    .line 272
    const/16 v3, 0x100

    .line 274
    if-ge p1, v3, :cond_120

    .line 276
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 278
    iget v5, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 280
    add-int/lit8 v6, v5, 0x1

    .line 282
    iput v6, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 284
    int-to-byte p1, p1

    .line 285
    aput-byte p1, v3, v5

    .line 287
    goto/16 :goto_4c

    .line 289
    :cond_120
    const/16 v8, 0x10f

    .line 291
    if-lt p1, v8, :cond_1a4

    .line 293
    sget-object v3, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    .line 295
    add-int/lit16 p1, p1, -0x10f

    .line 297
    aget v3, v3, p1

    .line 299
    add-int/2addr v3, v5

    .line 300
    sget-object v5, Lcom/junrar/unpack/Unpack20;->LBits:[B

    .line 302
    aget-byte p1, v5, p1

    .line 304
    if-lez p1, :cond_13c

    .line 306
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 309
    move-result v5

    .line 310
    rsub-int/lit8 v6, p1, 0x10

    .line 312
    ushr-int/2addr v5, v6

    .line 313
    add-int/2addr v3, v5

    .line 314
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 317
    :cond_13c
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    .line 319
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 322
    move-result p1

    .line 323
    aget v5, v1, p1

    .line 325
    add-int/2addr v5, v2

    .line 326
    aget-byte v6, v0, p1

    .line 328
    if-lez v6, :cond_189

    .line 330
    const/16 v8, 0x9

    .line 332
    if-le p1, v8, :cond_17e

    .line 334
    if-le v6, v7, :cond_15d

    .line 336
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 339
    move-result p1

    .line 340
    rsub-int/lit8 v8, v6, 0x14

    .line 342
    ushr-int/2addr p1, v8

    .line 343
    shl-int/2addr p1, v7

    .line 344
    add-int/2addr v5, p1

    .line 345
    add-int/lit8 v6, v6, -0x4

    .line 347
    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 350
    :cond_15d
    iget p1, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 352
    if-lez p1, :cond_169

    .line 354
    add-int/lit8 p1, p1, -0x1

    .line 356
    iput p1, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 358
    iget p1, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    .line 360
    :goto_167
    add-int/2addr v5, p1

    .line 361
    goto :goto_189

    .line 362
    :cond_169
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->LDD:Lcom/junrar/unpack/decode/LowDistDecode;

    .line 364
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 367
    move-result p1

    .line 368
    const/16 v6, 0x10

    .line 370
    if-ne p1, v6, :cond_17a

    .line 372
    const/16 p1, 0xf

    .line 374
    iput p1, p0, Lcom/junrar/unpack/Unpack;->lowDistRepCount:I

    .line 376
    iget p1, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    .line 378
    goto :goto_167

    .line 379
    :cond_17a
    add-int/2addr v5, p1

    .line 380
    iput p1, p0, Lcom/junrar/unpack/Unpack;->prevLowDist:I

    .line 382
    goto :goto_189

    .line 383
    :cond_17e
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 386
    move-result p1

    .line 387
    rsub-int/lit8 v7, v6, 0x10

    .line 389
    ushr-int/2addr p1, v7

    .line 390
    add-int/2addr v5, p1

    .line 391
    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 394
    :cond_189
    :goto_189
    const/16 p1, 0x2000

    .line 396
    if-lt v5, p1, :cond_199

    .line 398
    add-int/lit8 v3, v3, 0x1

    .line 400
    int-to-long v6, v5

    .line 401
    const-wide/32 v8, 0x40000

    .line 404
    cmp-long p1, v6, v8

    .line 406
    if-ltz p1, :cond_199

    .line 408
    add-int/lit8 v3, v3, 0x1

    .line 410
    :cond_199
    invoke-direct {p0, v5}, Lcom/junrar/unpack/Unpack;->insertOldDist(I)V

    .line 413
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->insertLastMatch(II)V

    .line 416
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    .line 419
    goto/16 :goto_4c

    .line 421
    :cond_1a4
    if-ne p1, v3, :cond_1ad

    .line 423
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readEndOfBlock()Z

    .line 426
    move-result p1

    .line 427
    if-nez p1, :cond_4c

    .line 429
    goto :goto_1b7

    .line 430
    :cond_1ad
    const/16 v3, 0x101

    .line 432
    if-ne p1, v3, :cond_1bb

    .line 434
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->readVMCode()Z

    .line 437
    move-result p1

    .line 438
    if-nez p1, :cond_4c

    .line 440
    :cond_1b7
    :goto_1b7
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->UnpWriteBuf()V

    .line 443
    return-void

    .line 444
    :cond_1bb
    const/16 v3, 0x102

    .line 446
    if-ne p1, v3, :cond_1ca

    .line 448
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 450
    if-eqz p1, :cond_4c

    .line 452
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 454
    invoke-direct {p0, p1, v3}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    .line 457
    goto/16 :goto_4c

    .line 459
    :cond_1ca
    const/16 v3, 0x107

    .line 461
    if-ge p1, v3, :cond_1ff

    .line 463
    add-int/lit16 p1, p1, -0x103

    .line 465
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 467
    aget v5, v3, p1

    .line 469
    invoke-static {v3, v4, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 474
    aput v5, p1, v4

    .line 476
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    .line 478
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 481
    move-result p1

    .line 482
    sget-object v3, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    .line 484
    aget v3, v3, p1

    .line 486
    add-int/2addr v3, v6

    .line 487
    sget-object v6, Lcom/junrar/unpack/Unpack20;->LBits:[B

    .line 489
    aget-byte p1, v6, p1

    .line 491
    if-lez p1, :cond_1f7

    .line 493
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 496
    move-result v6

    .line 497
    rsub-int/lit8 v7, p1, 0x10

    .line 499
    ushr-int/2addr v6, v7

    .line 500
    add-int/2addr v3, v6

    .line 501
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 504
    :cond_1f7
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->insertLastMatch(II)V

    .line 507
    invoke-direct {p0, v3, v5}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    .line 510
    goto/16 :goto_4c

    .line 512
    :cond_1ff
    const/16 v3, 0x110

    .line 514
    if-ge p1, v3, :cond_4c

    .line 516
    sget-object v3, Lcom/junrar/unpack/Unpack20;->SDDecode:[I

    .line 518
    add-int/lit16 p1, p1, -0x107

    .line 520
    aget v3, v3, p1

    .line 522
    add-int/2addr v3, v2

    .line 523
    sget-object v5, Lcom/junrar/unpack/Unpack20;->SDBits:[I

    .line 525
    aget p1, v5, p1

    .line 527
    if-lez p1, :cond_21b

    .line 529
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 532
    move-result v5

    .line 533
    rsub-int/lit8 v7, p1, 0x10

    .line 535
    ushr-int/2addr v5, v7

    .line 536
    add-int/2addr v3, v5

    .line 537
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 540
    :cond_21b
    invoke-direct {p0, v3}, Lcom/junrar/unpack/Unpack;->insertOldDist(I)V

    .line 543
    invoke-direct {p0, v6, v3}, Lcom/junrar/unpack/Unpack;->insertLastMatch(II)V

    .line 546
    invoke-direct {p0, v6, v3}, Lcom/junrar/unpack/Unpack;->copyString(II)V

    .line 549
    goto/16 :goto_4c
.end method

.method private unstoreFile()V
    .registers 10

    .line 1
    const/high16 v0, 0x10000

    .line 3
    new-array v1, v0, [B

    .line 5
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 7
    int-to-long v3, v0

    .line 8
    iget-wide v5, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 10
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 13
    move-result-wide v3

    .line 14
    long-to-int v3, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v1, v4, v3}, Lcom/junrar/unpack/ComprDataIO;->unpRead([BII)I

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_34

    .line 22
    const/4 v3, -0x1

    .line 23
    if-ne v2, v3, :cond_19

    .line 25
    goto :goto_34

    .line 26
    :cond_19
    int-to-long v5, v2

    .line 27
    iget-wide v7, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 29
    cmp-long v3, v5, v7

    .line 31
    if-gez v3, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    long-to-int v2, v7

    .line 35
    :goto_22
    iget-object v3, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 37
    invoke-virtual {v3, v1, v4, v2}, Lcom/junrar/unpack/ComprDataIO;->unpWrite([BII)V

    .line 40
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 42
    const-wide/16 v5, 0x0

    .line 44
    cmp-long v5, v3, v5

    .line 46
    if-ltz v5, :cond_4

    .line 48
    int-to-long v5, v2

    .line 49
    sub-long/2addr v3, v5

    .line 50
    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 52
    goto :goto_4

    .line 53
    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack;->ppm:Lcom/junrar/unpack/ppm/ModelPPM;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/ModelPPM;->getSubAlloc()Lcom/junrar/unpack/ppm/SubAllocator;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0}, Lcom/junrar/unpack/ppm/SubAllocator;->stopSubAllocator()V

    .line 12
    :cond_b
    return-void
.end method

.method public doUnpack(IZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->unpIO:Lcom/junrar/unpack/ComprDataIO;

    .line 3
    invoke-virtual {v0}, Lcom/junrar/unpack/ComprDataIO;->getSubHeader()Lcom/junrar/rarfile/FileHeader;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/junrar/rarfile/FileHeader;->getUnpMethod()B

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x30

    .line 13
    if-ne v0, v1, :cond_11

    .line 15
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->unstoreFile()V

    .line 18
    :cond_11
    const/16 v0, 0xf

    .line 20
    if-eq p1, v0, :cond_2e

    .line 22
    const/16 v0, 0x14

    .line 24
    if-eq p1, v0, :cond_2a

    .line 26
    const/16 v0, 0x1a

    .line 28
    if-eq p1, v0, :cond_2a

    .line 30
    const/16 v0, 0x1d

    .line 32
    if-eq p1, v0, :cond_26

    .line 34
    const/16 v0, 0x24

    .line 36
    if-eq p1, v0, :cond_26

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    invoke-direct {p0, p2}, Lcom/junrar/unpack/Unpack;->unpack29(Z)V

    .line 42
    goto :goto_31

    .line 43
    :cond_2a
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/Unpack20;->unpack20(Z)V

    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    invoke-virtual {p0, p2}, Lcom/junrar/unpack/Unpack15;->unpack15(Z)V

    .line 50
    :goto_31
    return-void
.end method

.method public getChar()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 3
    const/16 v1, 0x7fe2

    .line 5
    if-le v0, v1, :cond_9

    .line 7
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/junrar/unpack/vm/BitInput;->inBuf:[B

    .line 12
    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 16
    iput v2, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 18
    aget-byte v0, v0, v1

    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 22
    return v0
.end method

.method public init([B)V
    .registers 2

    .line 1
    if-nez p1, :cond_6

    .line 3
    const/high16 p1, 0x400000

    .line 5
    new-array p1, p1, [B

    .line 7
    :cond_6
    iput-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack;->unpInitData(Z)V

    .line 15
    return-void
.end method

.method public setDestSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 3
    return-void
.end method

.method public setPpmEscChar(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/junrar/unpack/Unpack;->ppmEscChar:I

    .line 3
    return-void
.end method

.method public unpInitData(Z)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1f

    .line 4
    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack;->tablesRead:Z

    .line 6
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 11
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 13
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 15
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 17
    iget-object v1, p0, Lcom/junrar/unpack/Unpack;->unpOldTable:[B

    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 22
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 24
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 26
    const/4 v1, 0x2

    .line 27
    iput v1, p0, Lcom/junrar/unpack/Unpack;->ppmEscChar:I

    .line 29
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack;->initFilters()V

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->InitBitInput()V

    .line 35
    iput-boolean v0, p0, Lcom/junrar/unpack/Unpack;->ppmError:Z

    .line 37
    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcom/junrar/unpack/Unpack;->writtenFileSize:J

    .line 41
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 43
    iput v0, p0, Lcom/junrar/unpack/Unpack15;->readBorder:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->unpInitData20(Z)V

    .line 48
    return-void
.end method
